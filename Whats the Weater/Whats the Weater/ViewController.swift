//
//  ViewController.swift
//  Whats the Weater
//
//  Created by Winfield Tian on 8/4/15.
//  Copyright (c) 2015 Winfield Tian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textCity: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func weatherButton(sender: AnyObject) {
        var url = NSURL(string: "http://www.weather-forecast.com/locations/" + textCity.text.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
        
        if url != nil {
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
                
                var urlError = false
                var weather = ""
                
                if error == nil {
                    
                    var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding) as NSString!
                    
                    var urlContentArray = urlContent.componentsSeparatedByString("<span class=\"phrase\">")
                    
                    if urlContentArray.count > 0 {
                        
                        var weatherArray = urlContentArray[1].componentsSeparatedByString("</span")
                        
                        
                        weather = weatherArray[0] as! String
                        weather = weather.stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                        
                    }
                    else {
                        urlError = true
                    }
                }
                else {
                    urlError = true
                }
                
                dispatch_async(dispatch_get_main_queue()){
                    if urlError == true {
                        self.showError()
                    }
                    else {
                        self.resultLabel.text = weather;
                    }
                }
            })
            task.resume()
            
        }
        else {
            showError()
        }

        
    }
    
    func showError(){
        resultLabel.text = "Was not able to find weather for " + textCity.text

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

