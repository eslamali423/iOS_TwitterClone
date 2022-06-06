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
    
  
    //MARK:- registration function with email and password
    func registration(email : String, password :  String, name: String, username:String, completion: @escaping (_ error : Error?)-> Void )  {
        Auth.auth().createUser(withEmail: email, password: password) { (results, error) in
         
            completion(error)
            
            if error == nil {
            results?.user.sendEmailVerification(completion: { (error) in
                print(error?.localizedDescription)
            
            })
       
            if results?.user != nil {
                let user =  User(id: results!.user.uid, name: name, username: username, email: email, bio: "Hey, I'm Using Twitter App")
                
                print(user.name)
                print(user.username)
                
//self.saveUserToFirestore(user: user)
               // saveUserLocally(user)
            }
        }
    }
    }
    
    
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
    
    
    func signOut () {
        do {
            try Auth.auth().signOut()
        }catch {
            print("can not sign out")
        }
    }
    
}
