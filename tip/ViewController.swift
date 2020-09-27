//
//  ViewController.swift
//  tip
//
//  Created by Marven Nadhum on 7/30/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var pickerData = ["1","2","3","4","5"]
    var selected = Double(1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billAmountTextField.becomeFirstResponder()
        
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        let num = Int(slider.value)
        lbl.text = String(Int(num))

        // Update the tip and total labels
        tipPercentageLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total/Double(num))
        
    }
    
    

}

