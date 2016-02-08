//
//  ViewController.swift
//  Is It Prime
//
//  Created by Winfield Tian on 8/2/15.
//  Copyright (c) 2015 Winfield Tian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var input: UITextField!
    @IBOutlet var Result: UILabel!
    
    @IBAction func submit(sender: AnyObject) {
        var myNumber = input.text.toInt()
        
        if myNumber != nil {
        
            var isPrime = 0
            
            if myNumber == 1 {
                isPrime = 0
            }
            
            for var i = 2; i <= myNumber!/2; i++ {
                
                if myNumber! % i == 0 {
                    isPrime = 1
                    break
                }
            }
            
            if isPrime == 0 {
                Result.text = "this number is a prime num"
            }
            else {
                Result.text = "this number is not prime"
            }
            
            
        }
        else {
            Result.text = "please enter a value!"
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

