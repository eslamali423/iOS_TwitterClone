//
//  RegistrationViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 13/05/2022.
//

import UIKit

class RegistrationViewController: UIViewController {

    //MARK:- Vars
    
    private let usernameField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Username"
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true

        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.font = UIFont.systemFont(ofSize: 15)
      
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        
        
        return textField
    }()
    
    private let emailField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Username"
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true

        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.font = UIFont.systemFont(ofSize: 15)
      
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        
        
        return textField
    }()
    
    private let passwordField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.isSecureTextEntry = true
        
        return textField
    }()
    private let confirmPasswordField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.layer.cornerRadius = 15
        textField.clipsToBounds = true
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    private  let signUpButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .brown
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.titleLabel?.font = .systemFont(ofSize: 20, weight : .medium)
       // button.addTarget(self, action: #selector(didTapSignInButton), for: .touchUpInside)

        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayouts()
        configureConstraints()
      
    }
    
    //MARK:- Layouts and Constraints
    private func setupLayouts(){
        
        view.addSubview(usernameField)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(confirmPasswordField)
        view.addSubview(signUpButton)
    }
    
    private func configureConstraints(){
        
        NSLayoutConstraint.activate([
        
            usernameField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 40),
            usernameField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            usernameField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            usernameField.heightAnchor.constraint(equalToConstant: 70),
            
            emailField.topAnchor.constraint(equalTo: usernameField.bottomAnchor,constant: 8),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            emailField.heightAnchor.constraint(equalToConstant: 70),

            
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor,constant: 8),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            passwordField.heightAnchor.constraint(equalToConstant: 70),
            
            
            confirmPasswordField.topAnchor.constraint(equalTo: passwordField.bottomAnchor,constant: 8),
            confirmPasswordField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            confirmPasswordField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            confirmPasswordField.heightAnchor.constraint(equalToConstant: 70),
            
        
            signUpButton.topAnchor.constraint(equalTo: confirmPasswordField.bottomAnchor,constant: 8),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            signUpButton.heightAnchor.constraint(equalToConstant: 70),

        ])
        
    }
    
    
    //MARK:- Did Tap Sign Up Button
    //MARK:- Did Tap Sign Up Button
    @IBAction func signUpButton(_ sender: Any) {
        if let username = usernameField.text, !username.isEmpty,
           let email = emailField.text, !email.isEmpty,
           let password = passwordField.text, !password.isEmpty,
           let cpassword = confirmPasswordField.text, !cpassword.isEmpty,
           password == cpassword{
           
            // success to get full data
            
//            UserManager.shared.registration(email: email, password: password) { (error) in
//                guard error == nil else    {
//                    ProgressHUD.showError(error?.localizedDescription)
//                    print ("something went wrong >>>>.....")
//                    return
//                }
//                ProgressHUD.showSuccess(" varification Email sent, plese verify your Email and confirm the registration")
//                self.dismiss(animated: true, completion: nil)
//
//            }
            
        } else  {
         //   ProgressHUD.showError("Please fill all requied data")
        }
    }
    
 
    



}
