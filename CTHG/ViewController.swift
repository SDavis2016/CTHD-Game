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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.text = "15"
        Lives.text = "❤️❤️❤️❤️"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/*func getRandomColor() -> UIColor{
    let randomNumber =
        GKRandomSource.sharedRandom().nextIntWithUpperBound(colors.count)
    return colors [randomNumber]
}
*/