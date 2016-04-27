//
//  ViewController.swift
//  CTHG
//
//  Created by Coder on 4/21/16.
//  Copyright © 2016 Epic Gaming. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    @IBOutlet weak var Timer: UILabel!
    @IBOutlet weak var Lives: UILabel!
    @IBOutlet weak var Questions: UILabel!
    @IBOutlet weak var Verification: UILabel!
    
    func getRandomNumber() -> Int {
        let randomnumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questionList.count)
        return randomnumber
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.text = "15"
        Lives.text = "❤️❤️❤️❤️"
        Questions.text = questionList[getRandomNumber()]
        Verification.text = ""
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TrueButton(sender: AnyObject) {
        if answerList[getRandomNumber()] == true {
            Verification.text = "Correct"
            Verification.textColor = UIColor.whiteColor()
            Verification.backgroundColor = UIColor.greenColor()
        } else {
            Verification.text = "Incorrect"
            Verification.textColor = UIColor.blackColor()
            Verification.backgroundColor = UIColor.redColor()
        }
    }


    @IBAction func FalseButton(sender: AnyObject) {
        if answerList[getRandomNumber()] == false {
            Verification.text = "Correct"
            Verification.textColor = UIColor.whiteColor()
            Verification.backgroundColor = UIColor.greenColor()
        } else {
            Verification.text = "False"
            Verification.textColor = UIColor.blackColor()
            Verification.backgroundColor = UIColor.redColor()
        }
    }

}
