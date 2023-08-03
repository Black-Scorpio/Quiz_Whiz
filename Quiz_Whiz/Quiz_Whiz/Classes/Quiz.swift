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
    var programmingQuestions: [String]
    var programmingAnswers: [[String]]
    var programmingCorrectAnswer: [Int]
    var randomQuestions: [String]
    var randomAnswers: [[String]]
    var randomCorrectAnswer: [Int]


    init() {
        //Initializing the Questions and Answers for the animal category
        self.animalQuestions = [
            "How many hearts does octopuses have?",
            "How many teeth does a cow have?",
            "Which shark is the fastest in the ocean?",
            "Which of the following animals is a natural predator of the red panda?",
            "How far away can a wolf smell its prey?",
            "What mammal has the most powerful bite?",
            "Where is the only place on their body dogs have sweat glands?",
            "A newborn kangaroo is about the size of a(n)…?",
            "What is the closest living relative to the T-rex?",
            "What is the deadliest creature in the world?"]
        self.animalAnswers = [
            ["1", "2", "3", "4"],
            ["22", "24", "14", "32"],
            ["Mako Shark", "Goblin Shark", "Bull Shark", "Tiger Shark"],
            ["Cobra", "Yak Hyena", "Snow Leopard", "Hippo"],
            ["10 meters", "10 miles", "They can't Smell", "2 miles"],
            ["Bear", "Human", "Hippopotamus", "Gorilla"],
            ["Eyes", "Tongue", "Eyebrows", "Pads of Paws"],
            ["Human Baby", "Lima Bean", "Apple", "Mouse"],
            ["Chicken", "Duck", "Fish", "Parrot"],
            ["King Cobra", "Cape Buffalo", "Swan", "Mosquito"]]
        self.animalCorrectAnswer = [3,4,1,3,4,3,4,2,1,4]
        
        //Initializing the Questions and Answers for the music category
        self.musicQuestions = [
            "What singer has had a Billboard No. 1 hit in each of the last four decades?",
            "Which member of the Avengers had a brief stint as a pop star?",
            "Before Miley Cyrus recorded 'Wrecking Ball,' it was offered to which singer?",
            "Eminem's 8 Mile is named after a road in which city?",
            "Which classical composer was deaf?",
            "How many coaches (full and part-time) from The Voice have won Grammys?",
            "Who sang the Spongebob Squarepants theme song for the movie?",
            "The Wu-Tang Clan recommends protecting which body part?",
            "Which Marvel movie's soundtrack won two Grammys?",
            "What singer holds the world record for most words in a hit single?"
          ];
        self.musicAnswers = [
            ["Michael Jackson", "Celine Dion", "Madonna", "Mariah Carey"],
            ["Brie Larson", "Chris Hemsworth", "Scarlett Johansson", "Chris Pratt"],
            ["Ariana Grande", "Beyonce", "Lady Gaga", "Rihanna"],
            ["New York", "Chicago", "Detroit", "Portland"],
            ["Johann Sebastian Bach", "Wolfgang Amadeus Mozart", "Ludwig van Beethoven", "Richard Wagner"],
            ["5", "12", "10", "14"],
            ["Avril Lavigne", "Britney Spears", "P!nk", "Rufus Wainwright"],
            ["Neck", "Arm", "Foot", "Ear"],
            ["Avengers: Endgame", "Black Panther", "Spider-Man: Homecoming", "Captain America: The First Avenger"],
            ["Busta Rhymes", "Eminem", "50 Cent", "Kanye West"]
          ];
        self.musicCorrectAnswer = [4,1,2,3,3,2,1,1,2,2]
        
        //Initializing the Questions and Answers for the programming category
        self.programmingQuestions = [
            "What popular operating system, launched in 1991, also has its own mascot, Tux the penguin?",
            "Which member of the Avengers had a brief stint as a pop star?",
            "Before Miley Cyrus recorded 'Wrecking Ball,' it was offered to which singer?",
            "Eminem's 8 Mile is named after a road in which city?",
            "Which classical composer was deaf?",
            "How many coaches (full and part-time) from The Voice have won Grammys?",
            "Who sang the Spongebob Squarepants theme song for the movie?",
            "The Wu-Tang Clan recommends protecting which body part?",
            "Which Marvel movie's soundtrack won two Grammys?",
            "What singer holds the world record for most words in a hit single?"
          ];
        self.programmingAnswers = [
            ["Android", "Windows", "Linux", "MacOS"],
            ["Brie Larson", "Chris Hemsworth", "Scarlett Johansson", "Chris Pratt"],
            ["Ariana Grande", "Beyonce", "Lady Gaga", "Rihanna"],
            ["New York", "Chicago", "Detroit", "Portland"],
            ["Johann Sebastian Bach", "Wolfgang Amadeus Mozart", "Ludwig van Beethoven", "Richard Wagner"],
            ["5", "12", "10", "14"],
            ["Avril Lavigne", "Britney Spears", "P!nk", "Rufus Wainwright"],
            ["Neck", "Arm", "Foot", "Ear"],
            ["Avengers: Endgame", "Black Panther", "Spider-Man: Homecoming", "Captain America: The First Avenger"],
            ["Busta Rhymes", "Eminem", "50 Cent", "Kanye West"]
          ];
        self.programmingCorrectAnswer = [3,1,2,3,3,2,1,1,2,2]
        
        //Initializing the Questions and Answers for the random facts category
        self.randomQuestions = [
            "Which Dr. Seuss' book was written as part of a bet?",
            "What is the world record for the tallest stack of donuts (in number of donuts)?",
            "Which fast-food chain has the most locations in the world?",
            "What was the first JELL-O pudding flavor made in 1936?",
            "What is the real name of the Cookie Monster?",
            "How do you laugh in Thai text lingo?",
            "What is the common name for Allium sativum?",
            "How many calories are in one gram of fat?",
            "Approximately, how many seeds are in a strawberry?",
            "What is the only even prime number?"
          ]
        self.randomAnswers = [
            ["The Cat in the Hat", "Hop on Pop", "Green Eggs and Ham", "The Lorax"],
            [">3000", "approx. 2000", "around 1000", "less than 1000"],
            ["McDonald’s", "Subway", "KFC", "Wendy’s"],
            ["Vanilla", "Chocolate", "S’more", "Caramel"],
            ["Albert", "Snuffy", "Jack", "Sid"],
            ["888", "777", "666", "555"],
            ["Ginger", "Garlic", "Paprika", "Nutmeg"],
            ["3", "5", "9", "11"],
            ["200", "300", "150", "<100"],
            ["1", "2", "3", "4"]
          ];
        self.randomCorrectAnswer = [3,1,2,2,4,4,2,3,1,2]
       

    }
}
