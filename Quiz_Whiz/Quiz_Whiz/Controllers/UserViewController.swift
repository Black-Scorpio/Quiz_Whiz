//
//  UserViewController.swift
//  Quiz_Whiz
//
//  Created by Scorpio Gentles on 2023-07-30.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    
    
    var user:User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseTapped(_ sender: Any) {
        let categoryVC = self.storyboard?.instantiateViewController(withIdentifier: "CategoryVC") as! CategoriesViewController
        // Navigating to UserViewController
        self.navigationController?.pushViewController(categoryVC, animated: true)
    }
    
    @IBAction func saveUsername(_ sender: UIButton) {
        // Check if userNameText has a value
        if  !userNameText.text!.isEmpty {
            user.name = userNameText.text!
        } else {
            showAlert(withTitle: "Empty Name", message: "Please enter a valid username.")
        }
    }
    
    //Function to show a pop up if the user name is not a valid one
    private func showAlert(withTitle title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        
        // Present the alert from the current view controller
        self.present(alertController, animated: true, completion: nil)
    }
}
