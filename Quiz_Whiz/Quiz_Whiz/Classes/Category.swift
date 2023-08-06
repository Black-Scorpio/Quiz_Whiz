//
//  Category.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-30.
//

import Foundation

//The category class represents the different categories of the quiz
class Category {
    var categoryOne: String
    var categoryTwo: String
    var categoryThree: String
    var categoryFour: String

    //initializing the different categories
    init(categoryOne: String, categoryTwo: String, categoryThree: String, categoryFour: String) {
        self.categoryOne = categoryOne
        self.categoryTwo = categoryTwo
        self.categoryThree = categoryThree
        self.categoryFour = categoryFour
    }
}
