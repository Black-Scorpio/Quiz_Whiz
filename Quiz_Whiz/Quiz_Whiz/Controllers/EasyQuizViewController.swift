//
//  EasyQuizViewController.swift
//  Quiz Whiz(KD)
//
//  Created by Kevyn Downer on 2023-07-24.
//

import UIKit

class EasyQuizViewController: UIViewController {
    
    //setting up the timer
    var timer = Timer()
    var progress: Float = 1.0
    
    //importing testDifficulty and strings from the previous views
    var categoryDecided: String!
    var difficultyDecided: String!
    var user:User!
    
    //this variable will hold which question the user is on
    var currentQuestion: Int?
    
    //setting up a global quiz app
    var quiz = Quiz()

    //Creating Outlets
    @IBOutlet weak var ProgressView: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    //connecting button labels
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    //Question Prompt label and Image outlets
    @IBOutlet weak var questionPromptLabel: UILabel!
    
    
    //This function is called on view load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting the current question to 0 which is the first question
        user.score = 0
        currentQuestion = 0
        runProgressBar()
        switchQuestion()
    
    }
    
    func runProgressBar()
    {
        //setting up the Progress bar
        ProgressView.progress = 1.0

        ProgressView.progress = progress
        
        //timer object which calls roughly every 1 second
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: {(timer) in
            
            //decrementing timer by 10%
            self.progress -= 0.0125
            self.ProgressView.progress = self.progress
            
            
            self.progressLabel.text =  String(Int(self.progress * 20)) + "s Left"
            
            if( self.ProgressView.progress <= 0.0)
            {
                self.progressLabel.text = "done"
            }
            })
    }
    

    
    func switchQuestion()
    {
        if(categoryDecided == "Animals")
        {
            questionPromptLabel.text = quiz.animalQuestions[currentQuestion!]
            answerButton1.setTitle(quiz.animalAnswers[currentQuestion!][0], for: .normal);
            answerButton2.setTitle(quiz.animalAnswers[currentQuestion!][1], for: .normal);
            answerButton3.setTitle(quiz.animalAnswers[currentQuestion!][2], for: .normal);
            answerButton4.setTitle(quiz.animalAnswers[currentQuestion!][3], for: .normal);
        }
        else if(categoryDecided == "Music")
        {
            questionPromptLabel.text = quiz.musicQuestions[currentQuestion!]
            answerButton1.setTitle(quiz.musicAnswers[currentQuestion!][0], for: .normal);
            answerButton2.setTitle(quiz.musicAnswers[currentQuestion!][1], for: .normal);
            answerButton3.setTitle(quiz.musicAnswers[currentQuestion!][2], for: .normal);
            answerButton4.setTitle(quiz.musicAnswers[currentQuestion!][3], for: .normal);
        }
        else if(categoryDecided == "Programming")
        {
            questionPromptLabel.text = quiz.programmingQuestions[currentQuestion!]
            answerButton1.setTitle(quiz.programmingAnswers[currentQuestion!][0], for: .normal);
            answerButton2.setTitle(quiz.programmingAnswers[currentQuestion!][1], for: .normal);
            answerButton3.setTitle(quiz.programmingAnswers[currentQuestion!][2], for: .normal);
            answerButton4.setTitle(quiz.programmingAnswers[currentQuestion!][3], for: .normal);
        }

        else if(categoryDecided == "Random Facts")
        {
            questionPromptLabel.text = quiz.randomQuestions[currentQuestion!]
            answerButton1.setTitle(quiz.randomAnswers[currentQuestion!][0], for: .normal);
            answerButton2.setTitle(quiz.randomAnswers[currentQuestion!][1], for: .normal);
            answerButton3.setTitle(quiz.randomAnswers[currentQuestion!][2], for: .normal);
            answerButton4.setTitle(quiz.randomAnswers[currentQuestion!][3], for: .normal);
        }

            
            
    }
    
    func checkIfCorrect(_ buttonInput: Int)
    {
        if(categoryDecided == "Animals")
        {
            if(buttonInput == quiz.animalCorrectAnswer[currentQuestion!])
            {
                user.score += 1;
            }
        }
        else if(categoryDecided == "Music")
        {
            if(buttonInput == quiz.musicCorrectAnswer[currentQuestion!])
            {
                user.score += 1;
            }
        }
        else if(categoryDecided == "Programming")
        {
            if(buttonInput == quiz.programmingCorrectAnswer[currentQuestion!])
            {
                user.score += 1;
            }
        }else if(categoryDecided == "Random Facts")
        {
            if(buttonInput == quiz.randomCorrectAnswer[currentQuestion!])
            {
                user.score += 1;
            }
        }
    }
    
    
    //when buttons are pressed it will move to the next question and check score
    @IBAction func button1Pressed(_ sender: Any) {
        checkIfCorrect(1);
        moveToNext();
    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        checkIfCorrect(2);
        moveToNext();
    }
    
    @IBAction func button3Pressed(_ sender: Any) {
        checkIfCorrect(3);
        moveToNext();
    }
    
    @IBAction func button4Pressed(_ sender: Any) {
        checkIfCorrect(4);
        moveToNext();
    }
    
    //move to next function will reset the timer and update the buttons/UI
    func moveToNext(){
        if(currentQuestion! < 9)
        {
            progress = 1.0
            currentQuestion! += 1
            switchQuestion()
        }
        else
        {
            //to navigate to next final score screen
            let finalScoreVC:FinalViewController = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            //finalScoreVC.category = categoryDecided
            //finalScoreVC.difficultyDecided = difficultySelected
            finalScoreVC.user = user
            self.navigationController?.pushViewController(finalScoreVC, animated: true)
        }
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
