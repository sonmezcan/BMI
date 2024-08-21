//
//  CalculatorBrain.swift
//  BMI
//
//  Created by can on 21.08.2024.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
        
    mutating func getAdvice() -> String {
        let advice = bmi?.advice
        return advice ?? ""
    }
    
    mutating func getColor() -> UIColor {
        let color = bmi?.color
        return color ?? UIColor.gray
    }
    
    
        
    mutating func calculateBMI (height: Float, weight: Float) {
            
           
            
            let bmiValue = weight / (height * height)
            if bmiValue < 18 {
                bmi = BMI(value: bmiValue, advice: "EAT MORE PIES", color: UIColor.systemBlue)
            } else if bmiValue < 25 {
                bmi = BMI(value: bmiValue, advice: "FIT AS A FIDDLE", color: UIColor.systemGreen)
            } else if bmiValue < 30 {
                bmi = BMI(value: bmiValue, advice: "EAT LESS", color: UIColor.systemYellow)
            }else {
                bmi = BMI(value: bmiValue, advice: "STOP EATING", color: UIColor.systemRed)
            }
            
        }
    }

