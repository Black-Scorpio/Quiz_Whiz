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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Display different image based on the user's score that was passed to the scoreLabel
        if let score = Int(scoreLabel.text ?? "0") {
            if score > 5 {
                finalScoreImage.image = UIImage(named: "happy")
            } else {
                finalScoreImage.image = UIImage(named: "sad_dog")
            }
        }
        //temp just to check if the scoring was working
        scoreLabel.text = String(user.score)
       
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
    
    // navigate back to the home page
    @IBAction func homeTapped(_ sender: UIButton) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "DifficultiesViewController") as! HomeViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    
    
}
