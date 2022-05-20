//
//  SearchViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class SearchViewController: BaseViewController {

    //MARK:- Vars
    private let searchBar : UISearchBar = {
       let search = UISearchBar()
        search.placeholder = "Seacrh..."
        
        return search
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
     
        
        //set the search bar in the navogationview title
       // navigationController?.navigationBar.topItem?.titleView = searchBar
        configureNavBar()
        configureNavBarWithProfileImage()
        
       
    }
    
    func configureNavBar()  {
        
        // set the logo in the center
        title = "Search"
        
        
        // set the right buton to the navBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .done, target: self, action: nil)
        
        // set search bar in the middle
        navigationItem.titleView = searchBar
        
        navigationController?.navigationBar.tintColor = .systemBlue
    }
    

    

}
