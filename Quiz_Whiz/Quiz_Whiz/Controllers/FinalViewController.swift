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
