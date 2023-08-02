//
//  Quiz.swift
//  Quiz_Whiz
//
//  Created by Kevyn on 2023-08-01.
//

import Foundation

class Quiz
{
    var questions: [String]
    var animalAnswers: [[String]]
    var codeAnswers: [[String]]

    init() {
        self.questions = ["Test1Question", "TestQuestion 2"]
        self.animalAnswers = [["AnimalAnswer1", "AnimalAnswer2", "AnimalAnswer3", "AnimalAnswer4"], ["AnimalAnswer 5", "AnimalAnswer6", "AnimalAnswer7", "AnimalAnswer8"]]
        self.codeAnswers = [["CodeAnswer1", "CodeAnswer2", "CodeAnswer3", "CodeAnswer4"], ["CodeAnswer 5", "CodeAnswer6", "CodeAnswer7", "CodeAnswer8"]]

    }
}
