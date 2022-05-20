//
//  HomeViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    //MARK:- Vars
    private let tableView : UITableView = {
        let table =  UITableView()
        table.register(TweetTableViewCell.self, forCellReuseIdentifier: TweetTableViewCell.identifier)
        
        return table
    }()
    
    private let createTweetButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.setImage(UIImage(systemName: "square.and.pencil",
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 28, weight: .medium)),for: .normal)
        button.layer.cornerRadius = 35
        button.layer.shadowColor = UIColor.label.cgColor
        button.layer.shadowOpacity = 0.4
        button.layer.shadowRadius = 10
        
        
        return button
    }()
    
 
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        
        configureNavBar()
       // animateTweetButton()
        view.addSubview(tableView)
        view.addSubview(createTweetButton)
        tableView.delegate = self
        tableView.dataSource = self
        
        
        title = "Home"
        createTweetButton.addTarget(self, action: #selector(didTapCreateTweetButton), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        handelAuthentication()
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.frame
        
        createTweetButton.frame = CGRect(x: view.frame.width - 90, y: view.frame.height - 90 - view.safeAreaInsets.bottom, width: 70  , height: 70)
        createTweetButton.addTarget(self, action: #selector(didTapCreateTweetButton), for: .touchUpInside)
    }
    
    //MARK:- Configure Navigation Controller Function
    func configureNavBar()  {
        
        // set the logo in the center
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "logo")
        
        let contentView = UIView()
        self.navigationItem.titleView = contentView
        self.navigationItem.titleView?.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        // set profile image in the left
        let containerView = UIControl(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        containerView.addTarget(self, action: #selector(didTapProfileImage), for: .touchUpInside)
        let image = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        image.backgroundColor = .systemBlue
        image.layer.cornerRadius = image.layer.frame.size.width / 2
        containerView.addSubview(image)
        let profileImage = UIBarButtonItem(customView: containerView)
        profileImage.width = 20
        
        navigationItem.leftBarButtonItem = profileImage
        
        // set the right buton to the navBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "sparkles"), style: .done, target: self, action: nil)
        
        
        navigationController?.navigationBar.tintColor = .systemBlue
    }
    
    @objc func didTapProfileImage() {
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    
    //MARK:- Create Tweet Button Action
    @objc private func didTapCreateTweetButton () {
        
        let createTweetVC = AddTweetViewController()
        navigationController?.pushViewController(createTweetVC, animated: true)
        
    }
    
    
    //MARK:- Create tweet button Animation
    func animateTweetButton()  {
        UIView.animateKeyframes(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse]) {
            self.createTweetButton.frame = CGRect(x: self.createTweetButton.frame.minX  - 1, y: self.createTweetButton.frame.minY - 1, width: self.createTweetButton.frame.size.width + 2, height: self.createTweetButton.frame.size.width + 2)
        }
    }
    
    
    //MARK:- Handel Authentication  (Auto Login)
    func handelAuthentication(){
        
        if UserDefaults.standard.bool(forKey: "isLoggedIn") == true {
            
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true, completion: nil)
            
        }
    }
    
}


//MARK:- Extension for TableView Delegate and dataSource
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =  tableView.dequeueReusableCell(withIdentifier: TweetTableViewCell.identifier, for: indexPath) as? TweetTableViewCell else {
            return UITableViewCell()
        }
        
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let tweetVC = TweetPreviewViewController()
        //TODO:- Send The Models
        tweetVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(tweetVC, animated: true)
        
        
        
    }
    
    
}

//MARK:- Extension for TweetTableviewDelegate 
extension HomeViewController : TweetTableViewCellDelegate {
    func tweetTableViewCellDidTapReplyButton() {
        print("reply pressed")
    }
    
    func tweetTableViewCellDidTapRetweetButton() {
        print("retweet pressed")
        
    }
    
    func tweetTableViewCellDidTapLikeButton() {
        print("like pressed")
        
    }
    
    func tweetTableViewCellDidTapShareButton() {
        print("share pressed")
        
    }
    
    
    
}
