//
//  NotificationViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/04/2022.
//

import UIKit

class NotificationViewController: UIViewController {
    
    //MARK:- Vars
    
    private let segmentedControll : UISegmentedControl = {
        let segment = UISegmentedControl (items: ["All","Mentions"])
        segment.translatesAutoresizingMaskIntoConstraints =  false
        segment.selectedSegmentIndex = 0
      
      
        
        

        let font = UIFont.systemFont(ofSize: 16,weight: .regular)
        segment.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
        // segment.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        return segment
    }()
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        configureNavBar()
        setupLayouts()
        configureConstraints()
        
        
    }
    
    //MARK:- Configure NavBar
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
        
        
        navigationController?.navigationBar.tintColor = .systemBlue
    }
    
    
    //MARK:- Layouts and Constraints
    
    private func setupLayouts(){
        view.addSubview(segmentedControll)
    }
    
    private func configureConstraints(){
        NSLayoutConstraint.activate([
            
            segmentedControll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            segmentedControll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            segmentedControll.heightAnchor.constraint(equalToConstant: 30),
            segmentedControll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
            
            
        ])
    }
    
}
