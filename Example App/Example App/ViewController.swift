//
//  ViewController.swift
//  Example App
//
//  Created by Winfield Tian on 8/1/15.
//  Copyright (c) 2015 Winfield Tian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var myLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        myLabel.text = "It worked!"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

