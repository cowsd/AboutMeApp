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
    private let username = "user"
    private let password = "111"
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 8
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "LoginSegue" {
            guard userNameTextField.text == username,
                  passwordTextField.text == password 
            else {
                showAlert(
                    title: "Invalid Username or Password",
                    message: "Please enter correct Username and Password and try again",
                    actionTitle: "Okay")
                return false
            }
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.displayName = userNameTextField.text
    }
    
    // MARK: - IB Actions
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(
            title: "Your Password is \(password)",
            message: "Don't tell anyone 🤫",
            actionTitle: "Got it!"
        )
    }
    
    @IBAction func forgotUsernameButtonTapped() {
        showAlert(
            title: "Your Username is \(username)",
            message: "Don't forget!",
            actionTitle: "Thanks!"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }

    // MARK: - Private Methods
    private func showAlert(
        title: String,
        message: String,
        actionTitle: String
        ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: actionTitle,
            style: .default,
            handler: { _ in
                if let text = self.userNameTextField.text, !text.isEmpty {
                        self.userNameTextField.text = ""
                    }
                    if let text = self.passwordTextField.text, !text.isEmpty {
                        self.passwordTextField.text = ""
                    }
            } )
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}
