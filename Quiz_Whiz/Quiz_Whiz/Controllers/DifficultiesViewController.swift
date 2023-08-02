//
//  DifficultiesViewController.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-29.
//

import UIKit

class DifficultiesViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    //variables passed on
    var user:User!
    var category: String!
    var difficultySelected: String!
    
    //create difficulty levels
    let difficulties = Difficulty(levelOne: "Easy", levelTwo: "Medium", levelThree: "Hard")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //display user name
        userLabel.text = "Player: \(user.name)"
        //hides the 'back' navigation item
        self.navigationItem.hidesBackButton = true
        //showing the category selected from previous screen
        categoryLabel.text = "Category Selected: \(category!)"
        // Do any additional setup after loading the view.
    }
    
    //function to go back to previous view
    @IBAction func backBtnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //function for checking which button is pressed
    @IBAction func checkCategoryPressed(_ sender: UIButton) {
        if sender.tag == 5{ //'easy' button
            difficultySelected = difficulties.levelOne
            toEasyLevel()
        }
        else if sender.tag == 6{ //'medium' button
            difficultySelected = difficulties.levelTwo
//            toMediumLevel()
        }
        else if sender.tag == 7{ //'hard' button
            difficultySelected = difficulties.levelThree
//            toHardLevel()
        }
    }
    
    //functions for navigataing to the appropriate screen
    func toEasyLevel(){
        //to navigate to next screen - easy quiz
        let easyQuizVC:EasyQuizViewController = self.storyboard?.instantiateViewController(withIdentifier: "EasyQuizViewController") as! EasyQuizViewController
        easyQuizVC.categoryDecided = category
        easyQuizVC.difficultyDecided = difficultySelected
        easyQuizVC.user = user
        self.navigationController?.pushViewController(easyQuizVC, animated: true)
    }
    
//    func toMediumLevel(){
//        //to navigate to next screen - medium quiz
//        let mediumQuizVC:MediumQuizViewController = self.storyboard?.instantiateViewController(withIdentifier: "MediumQuizViewController") as! MediumQuizViewController
//        mediumQuizVC.categoryDecided = category
//        mediumQuizVC.difficultyDecided = difficultySelected
//        mediumQuizVC.user = user
//        self.navigationController?.pushViewController(mediumQuizVC, animated: true)
//    }
    
//    func toHardLevel(){
//        //to navigate to next screen - hard quiz
//        let hardQuizVC:HardQuizViewController = self.storyboard?.instantiateViewController(withIdentifier: "HardQuizViewController") as! HardQuizViewController
//        hardQuizVC.categoryDecided = category
//        hardQuizVC.difficultyDecided = difficultySelected
//        hardQuizVC.user = user
//        self.navigationController?.pushViewController(hardQuizVC, animated: true)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
