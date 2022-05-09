//
//  HomeViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class HomeViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
       // animateTweetButton()
        configureNavBar()
        
        view.addSubview(tableView)
        view.addSubview(createTweetButton)
        tableView.delegate = self
        tableView.dataSource = self
        
    
       title = "HOME"
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

    }
    
    @objc private func didTapCreateTweetButton () {
     
        let createTweetVC = AddTweetViewController()
        navigationController?.pushViewController(createTweetVC, animated: true)
        
    }
    
    
    //MARK:- Animation
    func animateTweetButton()  {
        UIView.animateKeyframes(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse]) {
            self.createTweetButton.frame = CGRect(x: self.createTweetButton.frame.minX - 1, y: self.createTweetButton.frame.minY - 1, width: self.createTweetButton.frame.size.width + 2, height: self.createTweetButton.frame.size.width + 2)
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
