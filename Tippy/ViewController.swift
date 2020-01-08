//
//  ViewController.swift
//  Tippy
//
//  Created by Dami Bolarinwa on 1/6/20.
//  Copyright © 2020 Dami Bolarinwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("hello")
        
        view.endEditing(true)
    }
  
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
    
        let tipPercentages = [0.15, 0.20, 0.30]
        
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        tipLabel.text=String(format: "$%.2f", tip)
        totalLabel.text=String(format: "$%.2f", total)
        // Get the bill amount
        
        // Calculate tip and total
        
        // Update tip and total labels
        
        
    }
}

