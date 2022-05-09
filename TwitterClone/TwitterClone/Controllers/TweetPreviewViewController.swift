//
//  TweetPreviewViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 04/05/2022.
//

import UIKit

class TweetPreviewViewController: UIViewController {

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
        label.text = "eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salam eslam ali mahmoud hassan salama "
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .label
        label.numberOfLines = 0
        return label
    }()
    
    
    private  let likeButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "heart",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 18, weight: .regular)), for: .normal)
        button.tintColor = .systemPink
     //   button.addTarget(self, action: #selector(didTapLikeButton), for: .touchUpInside)
        return button
    }()
    
    private  let replyButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "bubble.left",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 16, weight: .regular)), for: .normal)
        button.tintColor = .systemGray2
     //   button.addTarget(self, action: #selector(didTapReplyButton), for: .touchUpInside)
        return button
    }()
    
    private  let retweetButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "arrow.2.squarepath",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 18, weight: .regular)), for: .normal)
        button.tintColor = .systemGray
     //   button.addTarget(self, action: #selector(didTapRetweetButton), for: .touchUpInside)
        return button
    }()
    
    private  let shareButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "square.and.arrow.up",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 18, weight: .regular)), for: .normal)
        button.tintColor = .systemGray
     //   button.addTarget(self, action: #selector(didTapShareButton), for: .touchUpInside)
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
    
    //MARK:- Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
        configureConstraints()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    //MARK:- Setup Subviews To the cell
    private func setupViews(){
        view.addSubview(avatarImageView)
        view.addSubview(displayNameLabel)
        view.addSubview(usernameLabel)
        view.addSubview(tweetText)
        
        stackView.addArrangedSubview(replyButton)
        stackView.addArrangedSubview(retweetButton)
        stackView.addArrangedSubview(likeButton)
        stackView.addArrangedSubview(shareButton)
        
        view.addSubview(stackView)
        
        
        
    }
    //MARK:- Configure Layouts Constraints
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            
            avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20),
            avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:  15),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50),
            
            displayNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            displayNameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor, constant: 4),
            
            usernameLabel.leadingAnchor.constraint(equalTo: displayNameLabel.trailingAnchor, constant: 4),
            usernameLabel.topAnchor.constraint(equalTo: displayNameLabel.topAnchor, constant: 0),
            
            tweetText.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
            tweetText.topAnchor.constraint(equalTo: displayNameLabel.bottomAnchor,constant: 10),
            tweetText.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10),
            
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: tweetText.bottomAnchor,constant: 10),
        
            
        ])
        
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
