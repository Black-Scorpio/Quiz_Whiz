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
        switchQuestion(currentQuestion!)
    
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
    

    
    func switchQuestion(_ questionNum: Int)
    {
        if(categoryDecided == "Animals")
        {
            answerButton1.setTitle(quiz.animalAnswers[questionNum][0], for: .normal);
            answerButton2.setTitle(quiz.animalAnswers[questionNum][1], for: .normal);
            answerButton3.setTitle(quiz.animalAnswers[questionNum][2], for: .normal);
            answerButton4.setTitle(quiz.animalAnswers[questionNum][3], for: .normal);
        }
        else if(categoryDecided == "Programming")
        {
            answerButton1.setTitle(quiz.codeAnswers[questionNum][0], for: .normal);
            answerButton2.setTitle(quiz.codeAnswers[questionNum][1], for: .normal);
            answerButton3.setTitle(quiz.codeAnswers[questionNum][2], for: .normal);
            answerButton4.setTitle(quiz.codeAnswers[questionNum][3], for: .normal);
        }
            
            
    }
    
    
    
    
    
    
    
    @IBAction func button1Pressed(_ sender: Any) {
        progress = 1.0
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
