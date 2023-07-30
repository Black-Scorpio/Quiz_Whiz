//
//  HomeViewController.swift
//  Quiz_Whiz
//
//  Created by Scorpio Gentles on 2023-07-30.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    @IBAction func startTapped(_ sender: Any) {
        let userVC = self.storyboard?.instantiateViewController(withIdentifier: "UserVC") as! UserViewController
       // navigating to UserViewController
        self.navigationController?.pushViewController(userVC, animated: true)
    }
    

}
