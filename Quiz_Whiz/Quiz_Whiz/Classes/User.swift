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
     
     var name: String {
         get {
             return _name
         }
         set {
             // Check if the new name contains only letters or numbers
             let characterSet = CharacterSet.alphanumerics
             guard newValue.rangeOfCharacter(from: characterSet.inverted) == nil else {
                 return // Invalid characters found, do not update the name
             }
             
             // Check if the new name is within the maximum length of 10 characters
             guard newValue.count <= 10 else {
                 return // Name is too long, do not update the name
             }
             
             _name = newValue
         }
     }
     
     init(name: String) {
         _name = name
     }
    
}
