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
       // navigating to UserViewController
        self.navigationController?.pushViewController(categoryVC, animated: true)
    }
    
}
