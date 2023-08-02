//
//  User.swift
//  Quiz_Whiz
//
//  Created by Scorpio Gentles on 2023-07-30.
//

import Foundation
import UIKit

struct User {
    private var _name: String
    private var score: Int
     
    var name: String {
         get {
             return _name
         }
         set {
             // Check if the new name is within the maximum length of 10 characters
             guard newValue.count <= 10 else {
                 return // Name is too long, do not update the name
             }
             
             _name = newValue
         }
     }
     
     init(name: String) {
         self._name = name
         self.score = 0
     }
    //Initiating the User with an empty name and 0 score
    init(){
        _name = ""
        score = 0
    }
    
}
