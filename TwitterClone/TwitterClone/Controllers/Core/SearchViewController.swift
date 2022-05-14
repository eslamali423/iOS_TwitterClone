//
//  SearchViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class SearchViewController: UIViewController {

    //MARK:- Vars
    private let searchBar : UISearchBar = {
       let search = UISearchBar()
        search.placeholder = "Seacrh..."
        
        return search
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
     
        
        //set the search bar in the navogationview title
       // navigationController?.navigationBar.topItem?.titleView = searchBar
        configureNavBar()
        
       
    }
    
    func configureNavBar()  {
        
        // set the logo in the center
        title = "Notification"
        
       
        
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
        
        // set search bar in the middle
        navigationItem.titleView = searchBar
        
        navigationController?.navigationBar.tintColor = .systemBlue
    }
    

    

}
