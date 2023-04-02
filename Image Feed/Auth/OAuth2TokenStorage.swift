//
//  OAuth2TokenStorage.swift
//  Image Feed
//
//  Created by Dmitry on 24.03.2023.
//

import Foundation

class OAuth2TokenStorage {
    private let userDefaults = UserDefaults.standard
    
    var token: String? {
        get {
            return userDefaults.string(forKey: Keys.bearerToken.rawValue)
        }
        set {
            userDefaults.set(newValue, forKey: Keys.bearerToken.rawValue)
        }
    }
}

enum Keys: String {
    case bearerToken
}
