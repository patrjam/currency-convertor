//
//  ViewController.swift
//  currency-convertor
//
//  Created by Patricia Jamriskova on 06.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertedLabel: UILabel!
    @IBOutlet weak var rateTextFiled: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    
    
    @IBOutlet weak var currencySegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        convertedLabel.text = " "
    }

    @IBAction func convertTapped(_ sender: Any) {
        let rate = Double(rateTextFiled.text!)!
        let amount = Double(amountTextField.text!)!
        
        let converted = rate * amount
        
        if currencySegmentedControl.selectedSegmentIndex == 0 {
            convertedLabel.text = "$ 3\(converted)"
        } //pozícia 0,1,2
        else {
            convertedLabel.text = "￥\(converted)"
            
        }
       
    }

}

