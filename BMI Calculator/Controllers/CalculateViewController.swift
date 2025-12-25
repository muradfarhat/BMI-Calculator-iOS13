//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightSliderValue: UILabel!
    @IBOutlet weak var heightSliderValue: UILabel!
    
    var bmiModel = BMIModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        bmiModel.height = sender.value
        heightSliderValue.text = bmiModel.getHightValue()
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        bmiModel.weight = sender.value
        weightSliderValue.text = bmiModel.getWeightValue()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmiModel.calculateBmi()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmi = bmiModel.getBmiValue()
        }
    }
}

