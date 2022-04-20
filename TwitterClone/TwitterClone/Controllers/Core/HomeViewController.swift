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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.frame
        
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
           
    
        return cell
    }
    
   
}
