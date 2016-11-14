//
//  ViewController.swift
//  tipCalculator
//
//  Created by Jacqueline Dunnett on 11/13/16.
//  Copyright © 2016 Jacqueline Dunnett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Stepper(_ sender: UIStepper) {
        
        self.ratingLabel.text = sender.value.description
    }
    
    @IBOutlet weak var billPrice: UITextField!
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBAction func calcButton(_ sender: AnyObject) {
        
        
        var billPrice = Double(self.billPrice.text!)
    
        var rating = Double(ratingLabel.text!)
        
        var finalAnswer : Double
        
        
        if rating == 1 || rating == 2 || rating == 3 {
            finalAnswer = billPrice! + (billPrice! * 0.1)
            answer.text = "Total: $\(finalAnswer)"
        }
        if rating == 4 || rating == 5 {
            finalAnswer = billPrice! + (billPrice! * 0.13)
            answer.text = "Total: $\(finalAnswer)"
        }
        if rating == 6 || rating == 7 {
            finalAnswer = billPrice! + (billPrice! * 0.15)
            answer.text = "Total: $\(finalAnswer)"
        }
        if rating == 8 || rating == 9 {
            finalAnswer = billPrice! + (billPrice! * 0.2)
            answer.text = "Total: $\(finalAnswer)"
        }
        if rating == 10 {
            finalAnswer = billPrice! + (billPrice! * 0.25)
            answer.text = "Total: $\(finalAnswer)"
        }

    }
    @IBOutlet weak var answer: UITextField!
}

