//
//  ViewController.swift
//  Simple Clock
//
//  Created by michael adams on 11/2/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateClock", userInfo: nil, repeats: true )

    }
    @IBOutlet weak var Label: UILabel!
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateClock() {
        
        let date = NSDate()
        
        
        
        let calendar = NSCalendar.currentCalendar()
        
        
        let componenents = calendar.components([NSCalendarUnit.Hour,NSCalendarUnit.Minute,NSCalendarUnit.Second], fromDate: date)
        
        self.Label.text = "\(String(componenents.hour)):\(String(componenents.minute)) \(String(componenents.second) )"
        
    }

    
}

