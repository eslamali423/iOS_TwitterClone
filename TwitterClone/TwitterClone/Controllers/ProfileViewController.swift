//
//  ProfileViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/05/2022.
//

import UIKit

class ProfileViewController: UIViewController {

    
    //MARK:- Vars
    private let coverImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    
    private let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .green
        imageView.layer.cornerRadius = 60
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
      
        return imageView
    }()
    
    private let editProfileButton : UIButton = {
        let button  = UIButton()
        button.setTitle("Edit Profile", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .clear
        button.layer.borderWidth = 2
        button.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nameLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 18, weight : .heavy)
        label.text = "messdupthoughts"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    private let usernameLabel : UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 14, weight : .semibold)
        label.text = "@Eslam.ali423"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private let tableView : UITableView = {
        let table =  UITableView()
      //  table.register(TweetTableViewCell.self, forCellReuseIdentifier: TweetTableViewCell.identifier)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .gray
        return table
    }()
    
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
      
        
        setupLayouts()
        configureConstraints()
        
    }
    
    
    private func setupLayouts(){
        view.addSubview(coverImageView)
        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(usernameLabel)
        view.addSubview(editProfileButton)
        
        
    }
    
    private func configureConstraints(){
        NSLayoutConstraint.activate([
        
            coverImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            coverImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            coverImageView.topAnchor.constraint(equalTo: view.topAnchor),
            coverImageView.heightAnchor.constraint(equalToConstant: view.frame.height / 4),
        
            profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),
            profileImageView.topAnchor.constraint(equalTo: coverImageView.bottomAnchor,constant: -60),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
            profileImageView.heightAnchor.constraint(equalToConstant: 120),
            
            
            
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor,constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10),

            usernameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 4),
            usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),

            editProfileButton.topAnchor.constraint(equalTo: coverImageView.bottomAnchor,constant: 10),
            editProfileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10),
            editProfileButton.widthAnchor.constraint(equalToConstant: 100),
            editProfileButton.heightAnchor.constraint(equalToConstant: 30),
  
     
        ])
       
        
    }

}
