//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Joshua on 8/30/18.
//  Copyright © 2018 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessText: UITextField!
    @IBOutlet weak var outcome: UILabel!
    
    @IBAction func guessButtonClicked(_ sender: Any) {
        let diceRoll = String(arc4random_uniform(6))
        if guessText.text == diceRoll {
            outcome.text = "You're right!"
        } else {
            outcome.text = "Wrong! it was a " + diceRoll + "."
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

