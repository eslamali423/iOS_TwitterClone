//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 31/05/2022.
//

import Foundation

class AuthViewModel {
    
    
    public func login(email: String, password: String, completion: @escaping (Bool)-> Void){
        
        AuthManager.shared.login(email: email, password: password) { (error, isVerified) in
            if error == nil , isVerified {
                completion(true)
            }
        }
        
    }
    
    
}
