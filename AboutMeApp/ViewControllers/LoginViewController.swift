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
    private let user = User.mockUser()
    
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
        guard userNameTextField.text == user.username,
              passwordTextField.text == user.password
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
        guard let tabBarController = segue.destination as? TabBarViewController else { return }
        tabBarController.user = user
    }
    
    // MARK: - IB Actions
    @IBAction func forgotRegisterData(_ sender: UIButton ) {
        sender.tag == 0
        ? showAlert(title: "Your password is \(user.password)", message: "Oops...")
        : showAlert(title: "Your login is \(user.username)", message: "Oops...")
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
