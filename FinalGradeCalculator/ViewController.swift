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
    @IBOutlet weak var percentTest: UITextField!
    @IBOutlet weak var desiredGrade: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var labelMy: UILabel!
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var gradeNow:Double = 0
    var gradeDesired:Double = 0
    var testPercentage:Double = 0
    var weight:Double = 0
    @IBAction func calculateGrade(_ sender: UIButton)
        
    {
        
        gradeNow = Double(currentGrade.text!)!
        testPercentage = Double(percentTest.text!)!
        gradeDesired = Double(desiredGrade.text!)!
        weight = (100.0 - testPercentage)/100
        
        let needed = (gradeDesired - weight * gradeNow)/(testPercentage / 100)
        
        myLabel.text = String(needed)
        currentGrade.text = ""
        percentTest.text = ""
        desiredGrade.text = ""
        if needed >= 100
        {
            view.backgroundColor = UIColor.red
            labelMy.text = "Ask for extra credit!"
        }
        else if needed <= 99
        {
            view.backgroundColor = UIColor.green
            labelMy.text = "It's possible, just have to study!"
        }
        else if needed >= 80
        {
            view.backgroundColor = UIColor.green
            labelMy.text = "Take your time and you'll do great!"
        }
        else if needed >= 50
        {
            view.backgroundColor = UIColor.green
            labelMy.text = "Just guess."
        }
        else 
        {
            view.backgroundColor = UIColor.green
            labelMy.text = "Just show up!"
        }
    }
    
    
}

