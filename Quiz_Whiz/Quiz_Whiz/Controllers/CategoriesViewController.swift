//
//  CategoriesViewController.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-29.
//

import UIKit

class CategoriesViewController: UIViewController {
    //User variable that will get passed through entire application
    var user:User!
    
    //local variable and will get passed on
    var categorySelected: String!
    
    //creating the categories
    let categories = Category(categoryOne: "Animals", categoryTwo: "Music", categoryThree: "Sport", categoryFour: "Random Facts")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //checking which button is pressed
    @IBAction func checkCategoryPressed(_ sender: UIButton) {
        if sender.tag == 1{ //'animals' button
            categorySelected = categories.categoryOne
        }
        else if sender.tag == 2{ //'music' button
            categorySelected = categories.categoryTwo
        }
        else if sender.tag == 3{ //'sport' button
            categorySelected = categories.categoryThree
        }
        else if sender.tag == 4{ //'random facts' button
            categorySelected = categories.categoryFour
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
