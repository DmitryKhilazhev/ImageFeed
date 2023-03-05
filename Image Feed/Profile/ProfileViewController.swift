//
//  ProfileViewController.swift
//  Image Feed
//
//  Created by Dmitry on 03.03.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var logoutButton: UIButton!
    
    @IBAction func didTapLogoutButton(_ sender: Any) {
    }
    
}
