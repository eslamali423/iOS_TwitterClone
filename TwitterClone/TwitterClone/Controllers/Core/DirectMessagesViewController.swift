//
//  DirectMessagesViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class DirectMessagesViewController: BaseViewController {

    //MARK:- Vars
    private let tableView : UITableView = {
        let table =  UITableView()
        table.register(ChatRoomTableViewCell.self, forCellReuseIdentifier: ChatRoomTableViewCell.identifier)
        
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavBar()
        configureNavBarWithProfileImage()
        
        
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.frame
        
    }
    
    
    
    func configureNavBar()  {
        
        // set the logo in the center
        title = "Messages"
        
        // set profile image in the left
        let containerView = UIControl(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        let image = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        image.backgroundColor = .systemBlue
        image.layer.cornerRadius = image.layer.frame.size.width / 2
        containerView.addSubview(image)
        let profileImage = UIBarButtonItem(customView: containerView)
        profileImage.width = 20
        navigationItem.leftBarButtonItem = profileImage
        
        // set the right buton to the navBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .done, target: self, action: nil)
        
        
        navigationController?.navigationBar.tintColor = .systemBlue
    }

    

}

//MARK:- Extension for TableView Delegate and dataSource
extension DirectMessagesViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =  tableView.dequeueReusableCell(withIdentifier: ChatRoomTableViewCell.identifier, for: indexPath) as? ChatRoomTableViewCell else {
            print("Didn't get the customized cell")
            return UITableViewCell()
        }
        
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    
}
