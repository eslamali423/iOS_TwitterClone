//
//  ViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class MainTabBarViewController : UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedIndex = 0
        
        let vc1 =  UINavigationController(rootViewController: HomeViewController())
        
        let vc2 =  UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController:  NotificationViewController())
        let vc4 = UINavigationController(rootViewController:  DirectMessagesViewController())
      
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc3.tabBarItem.image = UIImage(systemName: "bell")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
       
        vc4.tabBarItem.image = UIImage(systemName: "envelope")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")
        
        
        vc1.title = "Home"
        vc2.title = "Search"
        vc3.title = "Notification"
        vc4.title = "Messages"
        
       
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: false)
       
        
 
    
      

      
    
       
        
      
        
        
        
    }


}

