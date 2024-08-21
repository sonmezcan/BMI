//
//  ResultVC.swift
//  BMI
//
//  Created by can on 21.08.2024.
//

import UIKit

class ResultVC: UIViewController {
    
    var bmi : BMI?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
   
    
    var bmiValue : String?
    var advice  : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
        
    }
    
   

}
