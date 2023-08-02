//
//  UserViewController.swift
//  Quiz_Whiz
//
//  Created by Scorpio Gentles on 2023-07-30.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var user = User(name: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseTapped(_ sender: Any) {
        // Check if user name is not empty
            if user.name.isEmpty {
                showAlert(withTitle: "Empty Name", message: "Please enter a valid username.")
            } else {
                let categoryVC = self.storyboard?.instantiateViewController(withIdentifier: "CategoryVC") as! CategoriesViewController
                // Navigating to UserViewController
                categoryVC.user = user
                self.navigationController?.pushViewController(categoryVC, animated: true)
                
            }
    }
    
    @IBAction func saveUsername(_ sender: UIButton) {
        // Check if userNameText has a value
        if !userNameText.text!.isEmpty {
            // Check if the length of the username is within the limit
            if userNameText.text!.count <= 10 {
                user.name = userNameText.text!
                userNameLabel.text = "Username: \(user.name)"
            } else {
                showAlert(withTitle: "Invalid Name Length", message: "Username must be up to 10 characters long.")
            }
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
