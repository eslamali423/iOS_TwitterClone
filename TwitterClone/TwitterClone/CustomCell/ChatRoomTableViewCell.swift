//
//  ChatRoomTableViewCell.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 11/05/2022.
//

import UIKit

class ChatRoomTableViewCell: UITableViewCell {
    
    
    static let identifier = "ChatRoomTableViewCell"
    
    
    private let profileImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 35
        image.backgroundColor = .green
        return image
    }()
    
    private let username: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Username"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        
        return label
    }()
    
    private let lastMessage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Last Message contains alot of words"
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .gray
        
        return label
    }()
    
    private let messageDate: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10:30 PM"
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .gray
        return label
    }()
    
    
    //MARK:- Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupLayouts()
        configureConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupLayouts(){
        contentView.addSubview(profileImage)
        contentView.addSubview(username)
        contentView.addSubview(lastMessage)
        contentView.addSubview(messageDate)
    }
    
    
    private func configureConstraints(){
        NSLayoutConstraint.activate([
            
            profileImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            profileImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 70),
            profileImage.heightAnchor.constraint(equalToConstant: 70),
            
            
            username.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor,constant: 10),
            username.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20),
            
            messageDate.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -10),
            messageDate.centerYAnchor.constraint(equalTo: username.centerYAnchor),
            
            lastMessage.leadingAnchor.constraint(equalTo: username.leadingAnchor),
            lastMessage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -12),
            lastMessage.topAnchor.constraint(equalTo: username.bottomAnchor,constant: 8),
            
            
        ])
    }
    
}
