//
//  CategoriesViewController.swift
//  Quiz_Whiz
//
//  Created by Elsa Tan on 2023-07-29.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var animalButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var sportButton: UIButton!
    @IBOutlet weak var factsButton: UIButton!
    
    @IBOutlet weak var testNext: UIButton!
    var categorySelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting button title when button is pressed
        //not sure why if this block of code is deleted, it does not show the button title...
        animalButton.setTitle("animals", for: .highlighted)
        musicButton.setTitle("music", for: .highlighted)
        sportButton.setTitle("sport", for: .highlighted)
        factsButton.setTitle("random facts", for: .highlighted)
        // Do any additional setup after loading the view.
    }
    
    //checking which button is pressed
    @IBAction func checkCategoryPressed(_ sender: UIButton) {
        if sender.tag == 1{
            categorySelected = sender.currentTitle
        }
        else if sender.tag == 2{
            categorySelected = sender.currentTitle
        }
        else if sender.tag == 3{
            categorySelected = sender.currentTitle
        }
        else if sender.tag == 4{
            categorySelected = sender.currentTitle
        }
        
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
