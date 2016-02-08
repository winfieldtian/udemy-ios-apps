//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Winfield Tian on 8/2/15.
//  Copyright (c) 2015 Winfield Tian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myFingers = Int(arc4random_uniform(11))

    
    @IBOutlet var result: UILabel!
    @IBOutlet var input: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        if input.text != nil {
            var convert = input.text.toInt()
            
            if convert == myFingers {
                result.text = "That's correct! \(convert!) Fingers!"
            }
            else if convert > myFingers{
                result.text = "You guessed too high!"
            }
            else {
                result.text = "You guessed too low!"
            }
        }
        else {
            result.text = "Please enter a guess!"
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

