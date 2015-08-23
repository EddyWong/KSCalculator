//
//  ViewController.swift
//  KSCalculator
//
//  Created by WangKang on 8/22/15.
//  Copyright (c) 2015 WangKang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingNumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
    }
    
    @IBAction func compute(sender: UIButton) {
        userIsInTheMiddleOfTypingNumber = false
    }

    @IBAction func cleanup(sender: UIButton) {
        display.text = "0"
    }
}

