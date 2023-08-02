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
    
    //this variable will hold which question the user is on
    var currentQuestion: Int?
    
    //setting up a global quiz app
    var quiz = Quiz()

    //outlets
    @IBOutlet weak var ProgressView: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    //connecting button labels
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting the current question to 0 which is the first question
        currentQuestion = 0
        runProgressBar()
        //testCategory.text = categoryDecided
        //testDifficulty.text = difficultyDecided
        
        // Do any additional setup after loading the view.
        switchQuestion()
    
    }
    
    func runProgressBar()
    {
        //setting up the Progress bar
        ProgressView.progress = 1.0

        ProgressView.progress = progress
        
        //timer object which calls roughly every 1 second
        timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true, block: {(timer) in
            
            //decrementing timer by 10%
            self.progress -= 0.05
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
            answerButton1.setTitle(quiz.animalAnswers[currentQuestion!][0], for: .normal);
            answerButton2.setTitle(quiz.animalAnswers[currentQuestion!][1], for: .normal);
            answerButton3.setTitle(quiz.animalAnswers[currentQuestion!][2], for: .normal);
            answerButton4.setTitle(quiz.animalAnswers[currentQuestion!][3], for: .normal);
        }
        else if(categoryDecided == "Programming")
        {
            answerButton1.setTitle(quiz.codeAnswers[currentQuestion!][0], for: .normal);
            answerButton2.setTitle(quiz.codeAnswers[currentQuestion!][1], for: .normal);
            answerButton3.setTitle(quiz.codeAnswers[currentQuestion!][2], for: .normal);
            answerButton4.setTitle(quiz.codeAnswers[currentQuestion!][3], for: .normal);
        }
            
            
    }
    
    
    //when buttons are pressed it will move to the next question and check score
    @IBAction func button1Pressed(_ sender: Any) {
        moveToNext();
        //checkIfCorrect();
    }
    
    //move to next function will reset the timer and update the buttons/UI
    func moveToNext(){
        if(currentQuestion! < 1)
        {
            progress = 1.0
            currentQuestion! += 1
            switchQuestion()
        }
        else
        {
            //to navigate to next final score screen
            let finalScoreVC:FinalViewController = self.storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            //.category = categorySelected
            //This passes the user to the difficulties view
            //difficultiesVC.user = user
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
