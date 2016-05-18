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
    @IBOutlet weak var Levels: UILabel!
    @IBOutlet weak var FalseButtonLabel: UIButton!
    @IBOutlet weak var TrueButtonLabel: UIButton!
    @IBOutlet weak var QuestionCOunter: UILabel!
    @IBOutlet weak var Verification: UIImageView!
    @IBOutlet weak var ToFTitle: UILabel!
    
    var playing = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        x = 0
        playing = true
        Timer.text = "60"
        Lives.text = "❤️❤️❤️❤️"
        Questions.text = questionList[x]
        Verification.image = UIImage(named: "blank")
        Levels.text = "Level 1"
        self.countdown = 60
        Timer.text = "\(self.countdown)"
        FalseButtonLabel.layer.cornerRadius = 20
        TrueButtonLabel.layer.cornerRadius = 20
        ToFTitle.layer.cornerRadius = 30
        QuestionCOunter.text = ""
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TrueButton(sender: AnyObject) {
        while playing == true {
            if x == 0 {
                timeIsTicking()
            }
        if answerList[x] == true {
            Verification.image = UIImage(named: "true")
        } else {
            countingOfLives()
            Verification.image = UIImage(named: "false")
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
                Questions.text = "Game Over. Press true to play again."
            }
        }
        x=x+1
            
        if lifeNumber == 0 {
            playing = false
        } else if x < questionList.count {
            Questions.text = questionList[x]
        } else if x == questionList.count {
            Questions.text = "Congrats you have completed all the avalible levels! Check back soon for an update with more questions. Press true to play again"
            playing = false
            }
        
        if x == 13 {
            Levels.text = "Level 2"
            lifeNumber = 4
            Verification.image = UIImage(named: "blank")
            Lives.text = "❤️❤️❤️❤️"
        } else if x == 26 {
            Levels.text = "Level 3"
            lifeNumber = 4
            Verification.image = UIImage(named: "blank")
            Lives.text = "❤️❤️❤️❤️"
        }
            //Question Counter
            Counter()
            if y == 0 {
                QuestionCOunter.text = "New Level!"
            } else {
                QuestionCOunter.text = "Question \(y)/12"
            }

         return
        }
        
        if playing == false {
            x = 1
            playing = true
            lifeNumber = 4
            Timer.text = "60"
            Lives.text = "❤️❤️❤️❤️"
            Questions.text = questionList[x]
            Verification.image = UIImage(named: "blank")
            Levels.text = "Level 1"
            self.countdown = 60
            y = 1
            QuestionCOunter.text = "Question \(y)/12"
            
        }
        
    }


    @IBAction func FalseButton(sender: AnyObject) {
        while playing == true {
            if x == 0 {
                Questions.text = "Just press true when you want to begin"
                return
            }
            if answerList[x] == false {
            Verification.image = UIImage(named: "true")
         
            } else {
            countingOfLives()
            Verification.image = UIImage(named: "false")
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
                Questions.text = "Game Over. Press true to play again."
            }
        }
        x=x+1
        if lifeNumber == 0 {
            playing = false
        } else if x < questionList.count {
            Questions.text = questionList[x]
        } else if x == questionList.count {
            Questions.text = "Congrats you have completed all the avalible levels! Check back soon for an update with more questions. Press true to play again"
            playing = false
            }
        if x == 13 {
                Levels.text = "Level 2"
                lifeNumber = 4
            Lives.text = "❤️❤️❤️❤️"
        } else if x == 26 {
            Levels.text = "Level 3"
            lifeNumber = 4
            Lives.text = "❤️❤️❤️❤️"
            }
            //Question Counter
            Counter()
            if y == 0 {
                QuestionCOunter.text = "New Level!"
            } else {
                QuestionCOunter.text = "Question \(y)/12"
            }

            return
        }
        if playing == false {
            if x == 39 {
                return
            }else {
            Questions.text = "Game Over. Press true to play again."
            }
        }
        
}

    //timer
    var countdownTimer: NSTimer!
    var countdown: Int = 60
    
    
    func timeIsTicking() {
        self.countdown = 60
        self.countdownTimer =  NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateCountdown", userInfo: nil, repeats: true)
        
    }
    
    func updateCountdown() {
        Timer.text = "\(self.countdown)"
        self.countdown -= 1
        if playing == false {
            Timer.text = "0"
        }
        if self.countdown < 0{
            //self.countdownTimer.invalidate()
            Questions.text = "Game Over. Press true to play again."
            playing = false
        }
        if x == 13 {
            self.countdown = 60
            Timer.text = "\(self.countdown)"
        }else if x == 26 {
            self.countdown = 60
            Timer.text = "\(self.countdown)"
        } 
        
    }
}
