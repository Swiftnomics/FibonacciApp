//
//  ViewController.swift
//  FibonacciApp
//
//  Created by DataBates on 12/22/14.
//  Copyright (c) 2014 Kale Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Text View's IB Outlet
    @IBOutlet weak var textView: UITextView!
    
    
    //Switch
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    
    // Yes or No (switch label)
    @IBOutlet weak var includesZeroLabel: UILabel!
    
    // Numeric Label
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    
    // Slider
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    

    
    
    
// Added variable and instantiated class:
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
// Create an IB Action and connect it to both
// your UISlider and UISwitch on
// Sent Event: Value Changed
    
    @IBAction func updateFibonacciSequence() {
        
    // Set the max value for Slider:
        if includesZeroSwitch.on {
            
            // fib array should only be 93
            // numberOfItemsLabel should be 93
            
            numberOfItemsSlider.maximumValue = 94
        } else {
            numberOfItemsSlider.maximumValue = 93
        }
        
        
    // Set the Text Yes or No based on Slider:
        if includesZeroSwitch.on {
            includesZeroLabel.text = "Yes"
        } else {
            includesZeroLabel.text = "No homie"
        }
        
        // Ternary:
        // includesZeroLabel.text = includesZeroSwitch.on ? "Yes" : "No"
        
    // Fib Code:
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt64(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        
        textView.text = fibonacciSequence.values.description
        
      
        
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
        //first cast as INt to get whole number
        //Then cast that as a string
        
        
        
    }

    
    
}
















