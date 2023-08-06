//
//  Difficulty.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-30.
//

import Foundation

//the difficulty class represents which difficulty is passed to the next scene
class Difficulty {
    var levelOne: String
    var levelTwo: String
    var levelThree: String

    //initializing the different difficulties
    init(levelOne: String, levelTwo: String, levelThree: String) {
        self.levelOne = levelOne
        self.levelTwo = levelTwo
        self.levelThree = levelThree
    }
}
