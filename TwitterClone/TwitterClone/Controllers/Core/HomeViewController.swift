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
                                withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium)),for: .normal)
        button.layer.cornerRadius = 35
        button.layer.shadowColor = UIColor.label.cgColor
        button.layer.shadowOpacity = 0.4
        button.layer.shadowRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        
        
        view.addSubview(tableView)
        view.addSubview(createTweetButton)
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        handelAuthentication()
    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.frame
        
        createTweetButton.frame = CGRect(x: view.frame.width - 90, y: view.frame.height - 90 - view.safeAreaInsets.bottom, width: 70  , height: 70)
        
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
