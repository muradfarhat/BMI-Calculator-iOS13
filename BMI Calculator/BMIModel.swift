//
//  BMIModel.swift
//  BMI Calculator
//
//  Created by Murad Farhat on 11/12/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation

struct BMIModel {
    var height: Float
    var weight: Float
    var bmiValue: Float = 0.0
    
    init() {
        self.height = 1.5
        self.weight = 100.0
    }
    
    func getHightValue() -> String {
        return String(format: "%.2fm", height)
    }
    
    func getWeightValue() -> String {
        return String(format: "%.2fkg", weight)
    }
    
    func getBmiValue() -> String {
        return String(format: "%.2f", bmiValue)
    }
    
    mutating func calculateBmi() {
        bmiValue = weight / (height * height)
    }
}
