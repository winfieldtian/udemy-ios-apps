//
//  ViewController.swift
//  Animations
//
//  Created by Winfield Tian on 8/4/15.
//  Copyright (c) 2015 Winfield Tian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var i = 1
    var isAnimating = true;
    
    
    @IBOutlet var animalImage: UIImageView!
    @IBAction func updateImage(sender: AnyObject) {
        
        
        if isAnimating == true {
            isAnimating = false
            timer.invalidate()
        }
        else {
            isAnimating = true
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)

        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }
    
    func doAnimation(){
        
        var imageName = "animal" + String(i) + ".png"
        animalImage.image = UIImage(named: imageName)
        i++
        if i == 5 {
            i = 1
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        //animalImage.center = CGPointMake(animalImage.center.x - 400, animalImage.center.y) COME FROM LEFT
        
        //animalImage.alpha = 0 FADE IN
        
        //animalImage.frame = CGRectMake(100, 20, 0, 0) ZOOM IN
    }
    
    override func viewDidAppear(animated: Bool){
        UIView.animateWithDuration(1, animations: { () -> Void in
           // self.animalImage.center = CGPointMake(self.animalImage.center.x + 400, self.animalImage.center.y)
            
            //self.animalImage.alpha = 1
            
            //self.animalImage.frame = CGRectMake(100, 20, 100, 200)
        })
    }
}

