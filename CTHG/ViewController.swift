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
    @IBOutlet weak var Levels: UILabel!
    
   /* func getRandomNumber() -> Int {
        let randomnumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questionList.count)
    return randomnumber
    }
 */
    
    var x = 0
    var playing = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        x = 0
        playing = true
        Timer.text = "30"
        Lives.text = "❤️❤️❤️❤️"
        Questions.text = questionList[x]
        Verification.text = ""
        Levels.text = "Level 1"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TrueButton(sender: AnyObject) {
        while playing == true {
        if answerList[x] == true {
            Verification.text = "Correct"
            Verification.textColor = UIColor.whiteColor()
            Verification.backgroundColor = UIColor.greenColor()
        } else {
            countingOfLives()
            Verification.text = "Incorrect"
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
                Questions.text = "Game Over. Would you like to play again?"
            }
        }
        x=x+1
        if Lives.text == "" {
            playing = false
        } else if x < questionList.count {
            Questions.text = questionList[x]
        }
        
        if x == 13 {
            Levels.text = "Level 2"
            lifeNumber = 4
        }
         return
        }
        
        if playing == false {
            viewDidLoad()
        }
    }


    @IBAction func FalseButton(sender: AnyObject) {
        while playing == true {
            if answerList[x] == false {
            Verification.text = "Correct"
            Verification.textColor = UIColor.whiteColor()
            Verification.backgroundColor = UIColor.greenColor()
            } else {
            countingOfLives()
            Verification.text = "Incorrect"
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
                Questions.text = "Game Over. Would you like to play again?"
            }
        }
        x=x+1
        if Lives.text == "" {
            playing = false
        } else if x < questionList.count {
            Questions.text = questionList[x]
        }
        if x == 13 {
                Levels.text = "Level 2"
                lifeNumber = 4
        }
            return
        }
        if playing == false {
            Questions.text = "Goodbye"
        }
    }

    //timer
    var countdownTimer: NSTimer!
    var countdown: Int = 30
    
    override func viewDidAppear(animated: Bool) {
        self.countdown = 30
        self.countdownTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateCountdown", userInfo: nil, repeats: true)
    }
    
    func updateCountdown() {
        Timer.text = "\(self.countdown)"
        self.countdown -= 1
        if playing == false {
            return
        }
        if self.countdown < 0{
            self.countdownTimer.invalidate()
            Questions.text = "Game Over. Would you like to play again?"
            playing = false
            return
        }
        if x == 13 {
            
        }
        
    }
}
