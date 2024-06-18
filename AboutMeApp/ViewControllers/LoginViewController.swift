//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 08/06/24.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let userDetails = User.mockUser()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 8
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == userDetails.username,
              passwordTextField.text == userDetails.password
            else {
                showAlert(
                    title: "Invalid Username or Password",
                    message: "Please enter correct Username and Password and try again",
                    textField: passwordTextField
                )
                return false
            }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        tabBarController.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.displayUsername = userDetails.username
                welcomeVC.displayName = userDetails.person.firstName
            } else if let navigationVC = viewController as? UINavigationController,
                      let aboutUserVC = navigationVC.topViewController as? AboutUserViewController {
                aboutUserVC.firstName = userDetails.person.firstName
                aboutUserVC.lastName = userDetails.person.lastName
                aboutUserVC.occupation = userDetails.person.occupation
                aboutUserVC.yearOfBirth = userDetails.person.yearOfBirth
                aboutUserVC.countryOfBirth = userDetails.person.countryOfBirth
                aboutUserVC.avatar = userDetails.person.avatarFileName
                aboutUserVC.biography = userDetails.person.biography
            } else if let favoriteAnimalsVC = viewController as? FavoriteAnimalViewController {
                favoriteAnimalsVC.favoriteAnimal = userDetails.person.favoriteAnimal
            }
        }
    }
    
    // MARK: - IB Actions
    @IBAction func forgotRegisterData(_ sender: UIButton ) {
        sender.tag == 0
        ? showAlert(title: "Your password is \(userDetails.password)", message: "Oops...")
        : showAlert(title: "Your login is \(userDetails.username)", message: "Oops...")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }

    // MARK: - Private Methods
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}
