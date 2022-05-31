//
//  AuthManager.swift
//  TwitterClone
//
//  Created by Eslam Ali  on 31/05/2022.
//

import Foundation
import Firebase

class AuthManager {
    
    static let shared =  AuthManager()
    
    //MARK:- login function with email and password
    func login(email:String, password:String, completion: @escaping (_ error: Error?, _ isEmailVerified : Bool )->Void ) {
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if error == nil && authResult!.user.isEmailVerified  {
            completion(error,true)
           //     self.downloadUserFormFirestore(userID: authResult!.user.uid)

            }else {
                print("something went worng by login ")
                   print(error?.localizedDescription)
            completion(error,false)
            }
        }
    }
    
}
