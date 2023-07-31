//
//  DifficultiesViewController.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-29.
//

import UIKit

class DifficultiesViewController: UIViewController {
    
//    @IBOutlet weak var easyButton: UIButton!
//    @IBOutlet weak var mediumButton: UIButton!
//    @IBOutlet weak var hardButton: UIButton!
//    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var categoryLabel: UILabel!
    
    //variables passed on
    var user:User!
    var category: String!
    var difficultySelected: String!
    
    //create difficulty levels
    let difficulties = Difficulty(levelOne: "Easy", levelTwo: "Medium", levelThree: "Hard")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //removes the 'back' navigation item
        self.navigationItem.hidesBackButton = true
        //showing category selected from previous screen
        categoryLabel.text = "Category Selected: \(category!)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //checking which button is pressed
    @IBAction func checkCategoryPressed(_ sender: UIButton) {
        if sender.tag == 5{ //'easy' button
            difficultySelected = difficulties.levelOne
        }
        else if sender.tag == 6{ //'medium' button
            difficultySelected = difficulties.levelTwo
        }
        else if sender.tag == 7{ //'hard' button
            difficultySelected = difficulties.levelThree
        }
        
        //to navigate to next difficulties screen
        let quizVC:QuizViewController = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        quizVC.categoryDecided = category
        quizVC.difficultyDecided = difficultySelected
        self.navigationController?.pushViewController(quizVC, animated: true)
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
