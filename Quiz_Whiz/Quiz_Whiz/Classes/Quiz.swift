//
//  Quiz.swift
//  Quiz_Whiz
//
//  Created by Kevyn on 2023-08-01.
//

import Foundation

class Quiz
{
    var animalQuestions: [String]
    var animalAnswers: [[String]]
    var animalCorrectAnswer: [Int]
    var musicQuestions: [String]
    var musicAnswers: [[String]]
    var musicCorrectAnswer: [Int]
    //var programmingQuestions: [String]
    //var randomQuestions: [String]
    //var programmingAnswers: [[String]]
    //var randomAnswers: [[String]]

    init() {
        //Initializing the Questions and Answers for the animal category
        self.animalQuestions = ["How many hearts does octopuses have?", "How many teeth does a cow have?", "Which shark is the fastest in the ocean?", "Which of the following animals is a natural predator of the red panda?", "How far away can a wolf smell its prey?", "What mammal has the most powerful bite?", "Where is the only place on their body dogs have sweat glands?", "A newborn kangaroo is about the size of a(n)…?", "What is the closest living relative to the T-rex?", "What is the deadliest creature in the world?"]
        self.animalAnswers = [["1", "2", "3", "4"], ["22", "24", "14", "32"], ["Mako Shark", "Goblin Shark", "Bull Shark", "Tiger Shark"], ["Cobra", "Yak Hyena", "Snow Leopard", "Hippo"], ["10 meters", "10 miles", "They can't Smell", "2 miles"], ["Bear", "Human", "Hippopotamus", "Gorilla"], ["Eyes", "Tongue", "Eyebrows", "Pads of Paws"], ["Human Baby", "Lima Bean", "Apple", "Mouse"], ["Chicken", "Duck", "Fish", "Parrot"], ["King Cobra", "Cape Buffalo", "Swan", "Mosquito"]]
        self.animalCorrectAnswer = [3,4,1,3,4,3,4,2,1,4]
        
        //Initializing the Questions and Answers for the animal category
        self.musicQuestions = ["How many hearts does octopuses have?", "How many teeth does a cow have?", "Which shark is the fastest in the ocean?", "Which of the following animals is a natural predator of the red panda?", "How far away can a wolf smell its prey?", "What mammal has the most powerful bite?", "Where is the only place on their body dogs have sweat glands?", "A newborn kangaroo is about the size of a(n)…?", "What is the closest living relative to the T-rex?", "What is the deadliest creature in the world?"]
        self.musicAnswers = [["1", "2", "3", "4"], ["22", "24", "14", "32"], ["Mako Shark", "Goblin Shark", "Bull Shark", "Tiger Shark"], ["Cobra", "Yak Hyena", "Snow Leopard", "Hippo"], ["10 meters", "10 miles", "They can't Smell", "2 miles"], ["Bear", "Human", "Hippopotamus", "Gorilla"], ["Eyes", "Tongue", "Eyebrows", "Pads of Paws"], ["Human Baby", "Lima Bean", "Apple", "Mouse"], ["Chicken", "Duck", "Fish", "Parrot"], ["King Cobra", "Cape Buffalo", "Swan", "Mosquito"]]
        self.musicCorrectAnswer = [3,4,1,3,4,3,4,2,1,4]
       

    }
}
