//
//  ViewController.swift
//  FinalGradeCalculator
//
//  Created by  on 10/16/20.
//  Copyright © 2020 HobbesApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var currentGrade: UITextField!
    @IBOutlet weak var lastTest: UITextField!
    @IBOutlet weak var desiredGrade: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateGrade(_ sender: UIButton)
    
    {
    
    let num = currentGrade.text ?? "0"
    let num1 = Double(num) ?? 0
    
    let Num = lastTest.text ?? "0"
    let num2 = Double(Num) ?? 0
    
    let NuM = desiredGrade.text ?? "0"
    let num3 = Double(NuM) ?? 0
    
    //let result = num3 - num1 + num2 * 0.8 / 0.2
        
    // T = Grade * 0.8 + Final * 0.2
    // Figure out problem above (Algebraic Equation)
    
    myLabel.text = String(result)
    currentGrade.text = ""
    lastTest.text = ""
    desiredGrade.text = ""
    
    }
    








}

