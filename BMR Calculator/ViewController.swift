//
//  ViewController.swift
//  BMR Calculator
//
//  Created by Robin on 9/18/15.
//  Copyright © 2015 Robin. All rights reserved.
//
// .toInt() was removed. Int accepted string. 
// Int(textField.text!) instead of textField.text!.toInt()

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var outputTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
    
        print("button pressed")
    
        if let height = Int(heightTextField.text!){
            if let weight = Int(weightTextField.text!){
                
                print("Valid input! \(height) x \(weight)")
                
                let area = height * weight
                outputTextField.text = "\(area)"
            }
        }
    }
    

}

