//
//  TweetTableViewCell.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    
    static let identifier = "TweetTableViewCell"
    
    private let avatarImageView : UIImageView = {
       let image =  UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 25
        image.layer.masksToBounds = true
        image.clipsToBounds = true
        image.backgroundColor = .systemGreen
        
        return image
    }()
    
    private let displayNameLabel  : UILabel = {
       let label  =  UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Eslam Ali"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        
        
        return label
    }()
    private let usernameLabel  : UILabel = {
       let label  =  UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@Eslam.ali423"
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .secondaryLabel
        
        return label
    }()
    
    private let tweetText : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam "
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .label
        label.numberOfLines = 0
        return label
    }()
    
    
    private  let likeButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "heart",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 25, weight: .bold)), for: .normal)
        button.tintColor = .systemPink
        return button
    }()
    
    private  let replyButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "message",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 25, weight: .bold)), for: .normal)
        button.tintColor = .systemGray
        return button
    }()
    
    private  let retweetButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "arrow.2.squarepath",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 25, weight: .bold)), for: .normal)
        button.tintColor = .systemGray
        return button
    }()
    
    
    
    
    private let stackView : UIStackView = {
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.horizontal
        stackView.distribution  = UIStackView.Distribution.fillEqually
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 30
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(avatarImageView)
        contentView.addSubview(displayNameLabel)
        contentView.addSubview(usernameLabel)
        contentView.addSubview(tweetText)


    
        
        
        configureConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
        
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant:  20),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant:  15),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50),
            
            displayNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            displayNameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor, constant: 4),
           
            usernameLabel.leadingAnchor.constraint(equalTo: displayNameLabel.trailingAnchor, constant: 4),
            usernameLabel.topAnchor.constraint(equalTo: displayNameLabel.topAnchor, constant: 0),
            
            tweetText.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
            tweetText.topAnchor.constraint(equalTo: displayNameLabel.bottomAnchor,constant: 10),
            tweetText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -10),
            tweetText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20)
           
            
           
            
        ])
        
        
    }
    
}
