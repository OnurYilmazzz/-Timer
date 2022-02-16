//
//  ViewController.swift
//  timer
//
//  Created by onur yılmaz on 15.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
   
    
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
       
        counter = 60
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
        
    @objc func timerFunction(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "Zaman doldu "
        }
    }
    
    
    
    @IBAction func buttonClicked(_ sender: Any) {
    
        print("Button Clicked")
    }
    

}

