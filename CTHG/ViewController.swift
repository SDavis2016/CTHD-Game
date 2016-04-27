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
    
   /* func getRandomNumber() -> Int {
        let randomnumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questionList.count)
    return randomnumber
    }
 */
    var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.text = "15"
        Lives.text = "❤️❤️❤️❤️"
        Questions.text = questionList[x]
        Verification.text = ""
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TrueButton(sender: AnyObject) {
        if answerList[x] == true {
            Verification.text = "Correct"
            Verification.textColor = UIColor.whiteColor()
            Verification.backgroundColor = UIColor.greenColor()
        } else {
            Verification.text = "Incorrect"
            answer = "Incorrect"
            Verification.textColor = UIColor.blackColor()
            Verification.backgroundColor = UIColor.redColor()
            if lifeNumber == 4 {
                Lives.text = "❤️❤️❤️❤️"
            } else if lifeNumber == 3 {
                Lives.text = "❤️❤️❤️"
            } else if lifeNumber == 2 {
                Lives.text = "❤️❤️"
            } else if lifeNumber == 1 {
                Lives.text = "❤️"
            } else if lifeNumber == 0 {
                Lives.text = ""
                Questions.text = "Game Over"
            }
        }
        x=x+1
        Questions.text = questionList[x]
    }


    @IBAction func FalseButton(sender: AnyObject) {
        if answerList[x] == false {
            Verification.text = "Correct"
            Verification.textColor = UIColor.whiteColor()
            Verification.backgroundColor = UIColor.greenColor()
        } else {
            Verification.text = "Incorrect"
            answer = "Incorrect"
            Verification.textColor = UIColor.blackColor()
            Verification.backgroundColor = UIColor.redColor()
            if lifeNumber == 4 {
                Lives.text = "❤️❤️❤️❤️"
            } else if lifeNumber == 3 {
                Lives.text = "❤️❤️❤️"
            } else if lifeNumber == 2 {
                Lives.text = "❤️❤️"
            } else if lifeNumber == 1 {
                Lives.text = "❤️"
            } else if lifeNumber == 0 {
                Lives.text = ""
                Questions.text = "Game Over"
            }
        }
        x=x+1
        Questions.text = questionList[x+1]
    }

    //timer
    var countdownTimer: NSTimer!
    var countdown: Int = 15
    override func viewDidAppear(animated: Bool) {
        self.countdown = 15
        self.countdownTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateCountdown", userInfo: nil, repeats: true)
    }
    
    func updateCountdown() {
        Timer.text = "\(self.countdown)"
        self.countdown--
        if self.countdown < 0{
            self.countdownTimer.invalidate()
            Timer.text = "You are out of time"
        }
    }
}
