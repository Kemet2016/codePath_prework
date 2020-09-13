//
//  ViewController.swift
//  Tippy
//
//  Created by Ahmed Moussa on 9/12/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipValues: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBOutlet weak var shareAmount: UILabel!
    
    
    @IBOutlet weak var numberOfPeople: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBOutlet weak var splitSlider: UISlider!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func tipValue(_ sender: UISlider) {
        tipValues.text! = String(Int(sender.value)) + "%"
    }
    
    @IBAction func shareValue(_ sender: UISlider) {
        numberOfPeople.text = String(Int(sender.value))
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // calculate the tip and share
        
        let tip = bill * Double(tipSlider.value) / 100
        
        let total = bill + tip
        
        let share = total / Double(splitSlider.value)
        
       // Update the UI
        
        
        tipAmount.text = String(format: "$%.2f", tip)
        
        shareAmount.text = String(format: "$%.2f", share)
        
        totalAmount.text = String(format: "$%.2f", total)
        
        
        
        
    }
    


}

