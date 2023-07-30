//
//  CategoriesViewController.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-29.
//

import UIKit

class CategoriesViewController: UIViewController {

    //outlets
    @IBOutlet weak var animalButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var sportButton: UIButton!
    @IBOutlet weak var factsButton: UIButton!
    
    //User variable that will get passed through entire application
    var user:User!
    
    //local variable
    var categorySelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let categories = Category(categoryOne: "Animals", categoryTwo: "Music", categoryThree: "Sport", categoryFour: "Random Facts")
        
        //setting button title when button is pressed
        //not sure why if this block of code is deleted, it does not show the button title...
        animalButton.setTitle(categories.categoryOne, for: .highlighted)
        musicButton.setTitle(categories.categoryTwo, for: .highlighted)
        sportButton.setTitle(categories.categoryThree, for: .highlighted)
        factsButton.setTitle(categories.categoryFour, for: .highlighted)
        // Do any additional setup after loading the view.
    }
    
    //checking which button is pressed
    @IBAction func checkCategoryPressed(_ sender: UIButton) {
        if sender.tag == 1{ //'animals' button
            categorySelected = sender.currentTitle
        }
        else if sender.tag == 2{ //'music' button
            categorySelected = sender.currentTitle
        }
        else if sender.tag == 3{ //'sport' button
            categorySelected = sender.currentTitle
        }
        else if sender.tag == 4{ //'random facts' button
            categorySelected = sender.currentTitle
        }
        
        //to navigate to next difficulties screen 
        let difficultiesVC:DifficultiesViewController = self.storyboard?.instantiateViewController(withIdentifier: "DifficultiesViewController") as! DifficultiesViewController
        difficultiesVC.category = categorySelected
        self.navigationController?.pushViewController(difficultiesVC, animated: true)
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
