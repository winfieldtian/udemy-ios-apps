//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Winfield Tian on 8/2/15.
//  Copyright (c) 2015 Winfield Tian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    var timing = false
    
    func result(){
        if timing == true {
            count++
            displayTime.text = String(count)

        }

    }

    @IBOutlet var displayTime: UILabel!

    @IBAction func playTimer(sender: AnyObject) {
        timing = true
    }
    
    @IBAction func stopTimer(sender: AnyObject) {
        timing = false
    }

    @IBAction func pauseTimer(sender: AnyObject) {
        timing = false
        
    }
    
    @IBAction func resetTimer(sender: AnyObject) {
        timing = false
        count = 0
        displayTime.text = String(count)

    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

