//
//  ProfileViewController.swift
//  Image Feed
//
//  Created by Dmitry on 03.03.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
private var accountAvatarImage: UIImageView?
private var accountFullNameLabel: UILabel?
private var userLabel: UILabel?
private var accountDescription: UILabel?
private var accountLogoutButton: UIButton?

override func viewDidLoad() {
super.viewDidLoad()
getAccountImage()
getAccountFullNameLabel()
getUserLabel()
getAccountDescription()
getAccountLogoutButton()
}

private func getAccountImage() {
let baseImage = UIImage(named: "avatar")
let accountImage = UIImageView(image: baseImage)

accountImage.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(accountImage)
setAccountAvatarConstraints(image: accountImage)

self.accountAvatarImage = accountImage
}

private func getAccountFullNameLabel() {
let label = UILabel()
setAccountFullNameLabel(label: label)

label.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(label)

setAccountFullNameConstraints(label: label)

self.accountFullNameLabel = label
}

private func getUserLabel() {
let label = UILabel()
setUserLabel(label: label)

label.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(label)

setUserLabelConstraints(label: label)

self.userLabel = label
}

private func getAccountDescription() {
let label = UILabel()
setAccountDescription(label: label)

label.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(label)

setAccountDescriptionConstraints(label: label)

self.accountDescription = label
}

private func getAccountLogoutButton() {
let button = UIButton()
setAccountLogoutButton(button: button)

button.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(button)

setAccountLogoutButtonConstraints(button: button)

self.accountLogoutButton = button
}

private func setAccountFullNameLabel(label: UILabel) {
label.text = "Екатерина Новикова"
label.textColor = UIColor.ypWhiteIOS
label.font = UIFont(name: "SF-Pro-Text-Bold", size: 23)
}

private func setUserLabel(label: UILabel) {
label.text = "@ekaterina_nov"
label.textColor = UIColor.ypGray
label.font = UIFont(name: "SF-Pro-Text-Regular" , size: 13)
}

private func setAccountDescription(label: UILabel) {
label.text = "Hello, world!"
label.textColor = UIColor.ypWhite
label.font = UIFont(name: "SF-Pro-Text-Regular", size: 13)
}

private  func setAccountLogoutButton(button: UIButton) {
guard let image = UIImage(named: "logout_button") else { return }

button.setImage(image, for: .normal)
}

private func setAccountAvatarConstraints(image: UIImageView) {
NSLayoutConstraint.activate([
    image.widthAnchor.constraint(equalToConstant: 70),
    image.heightAnchor.constraint(equalToConstant: 70),
    image.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
    image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
])
}

private func setAccountFullNameConstraints(label: UILabel) {
guard let accountImage = accountAvatarImage else { return }
NSLayoutConstraint.activate([
label.topAnchor.constraint(equalTo: accountImage.bottomAnchor, constant: 8),
label.leadingAnchor.constraint(equalTo: accountImage.leadingAnchor)
])
}

private func setUserLabelConstraints(label: UILabel) {
guard let accountFullNameLabel = accountFullNameLabel else { return }
NSLayoutConstraint.activate([
    label.topAnchor.constraint(equalTo: accountFullNameLabel.bottomAnchor, constant: 8),
    label.leadingAnchor.constraint(equalTo: accountFullNameLabel.leadingAnchor)
])
}

private func setAccountDescriptionConstraints(label: UILabel) {
guard let userLabel = userLabel else { return }
NSLayoutConstraint.activate([
    label.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 8),
    label.leadingAnchor.constraint(equalTo: userLabel.leadingAnchor)
])
}

private func setAccountLogoutButtonConstraints(button: UIButton) {
guard let accountAvatarImage = accountAvatarImage else { return }
NSLayoutConstraint.activate([
    button.widthAnchor.constraint(equalToConstant: 20),
    button.heightAnchor.constraint(equalToConstant: 22),
    button.centerYAnchor.constraint(equalTo: accountAvatarImage.centerYAnchor),
    button.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
    button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26)
])
}
    
}
