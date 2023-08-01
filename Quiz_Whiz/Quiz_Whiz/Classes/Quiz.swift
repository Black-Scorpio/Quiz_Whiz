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
    var answers: [[String]]

    init( inputCategory: String) {
        self.questions = ["Test1Question", "TestQuestion 2"]
        self.answers = [["Test Answer1", "Test Answer2", "Test Answer3", "Test Answer4"], ["Test Answer 5", "Test Answer6", "Test Answer7", "Test Answer8"]]
        self.category = inputCategory
    }
}
