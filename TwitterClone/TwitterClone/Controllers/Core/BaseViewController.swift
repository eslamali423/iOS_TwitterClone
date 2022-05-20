//
//  BaseViewController.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 20/05/2022.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavBarWithProfileImage()
    }
    
    
    //MARK:- Configure Navigation Controller Function
    func configureNavBarWithProfileImage()  {
        
        
        
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
        
  
        navigationController?.navigationBar.tintColor = .systemBlue
    }
    
    @objc func didTapProfileImage() {
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
