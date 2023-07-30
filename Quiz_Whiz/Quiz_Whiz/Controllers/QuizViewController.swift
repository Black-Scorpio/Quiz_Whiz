//
//  QuizViewController.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-30.
//

import UIKit
//this is just for testing
class QuizViewController: UIViewController {

    @IBOutlet weak var testDifficulty: UILabel!
    @IBOutlet weak var testCategory: UILabel!
    
    var categoryDecided: String!
    var difficultyDecided: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testCategory.text = categoryDecided
        testDifficulty.text = difficultyDecided
        // Do any additional setup after loading the view.
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
