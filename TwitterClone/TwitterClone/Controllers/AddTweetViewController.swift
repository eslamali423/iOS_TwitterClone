//
//  AddTweetViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 21/04/2022.
//

import UIKit

class AddTweetViewController: UIViewController {

    
    //MARK:- Vars
    private let  profileImage : UIImageView = {
       let image = UIImageView()
        image.layer.cornerRadius = 25
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .green
        
        return image
    }()
    
    private let tweetButton : UIButton = {
       let button = UIButton()
        button.setTitle("Tweet", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 15
        
    
        return button
    }()
    
    private let tweetBoxField : UITextField = {
        let text = UITextField()
        text.placeholder = "Whats happning now?"
        text.borderStyle = .none
        text.translatesAutoresizingMaskIntoConstraints = false
 
        return text
    }()
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayouts()
        configureCosntraints()
        
        
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Tweet", style: .done, target: self, action: #selector(didTapTweetButton))
        
    }
    
    
    //MARK:- Layouts and Constraints
    private func setupLayouts (){
        view.addSubview(profileImage)
        view.addSubview(tweetBoxField)
    }
    
    private func configureCosntraints(){
        NSLayoutConstraint.activate([
            
            profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            profileImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImage.heightAnchor.constraint(equalToConstant: 50),
            profileImage.widthAnchor.constraint(equalToConstant: 50),
            
            tweetBoxField.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 10),
            tweetBoxField.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tweetBoxField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
            
  
        ])
    }
    
    
    
    //MARK:- Tweet Button
    @objc private func didTapTweetButton() {
        navigationController?.popViewController(animated: true)
    }
    
    
    

}
