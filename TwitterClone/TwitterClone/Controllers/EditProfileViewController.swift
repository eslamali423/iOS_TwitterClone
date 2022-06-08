//
//  EditProfileViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 08/06/2022.
//

import UIKit

class EditProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            }
    

    func configureNavBar()  {
        
        self.title =  "Edit Profile"
        
       
        
        // set the right buton to the navBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .done, target: self, action: #selector(didTapSignOutButton))
        
        
        navigationController?.navigationBar.tintColor = .systemBlue
    }
  
    @objc func didTapSignOutButton (){
        
    }
    

}
