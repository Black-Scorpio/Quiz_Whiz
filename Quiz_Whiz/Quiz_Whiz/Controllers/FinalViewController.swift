//
//  FinalViewController.swift
//  Quiz_Whiz
//
//  Created by Scorpio Gentles on 2023-07-30.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var finalScoreImage: UIImageView!
    
    var user:User!
    
    var questionCount:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let count = questionCount ?? 10
        scoreLabel.text = "\(String(user.score))/\(count)!"
            if user.score > 5 {
                finalScoreImage.image = UIImage(named: "happy")
            } else {
                finalScoreImage.image = UIImage(named: "sad")
            }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // navigate back to the home page
    @IBAction func homeTapped(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    
    @IBAction func playAgainTapped(_ sender: UIButton) {
        let categoryVC = self.storyboard?.instantiateViewController(withIdentifier: "CategoryVC") as! CategoriesViewController
        // Navigating to UserViewController
        user.score = 0
        categoryVC.user = user
        self.navigationController?.pushViewController(categoryVC, animated: true)
    }
    
    
    
}
