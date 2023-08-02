//
//  Quiz.swift
//  Quiz_Whiz
//
//  Created by Kevyn on 2023-08-01.
//

import Foundation

class Quiz
{
    var category: String
    var questions: [String]

    init(category:String) {
        self.category = category
        self.questions = [String]()
    }
}
