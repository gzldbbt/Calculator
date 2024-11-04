//
//  ViewController.swift
//  Calculadora
//
//  Created by english on 2024-09-27.
//

import UIKit

class ViewController: UIViewController {
    var temp:String = ""
    var firstNumber = 0.0
    var secondNumber = 0.0
    var result = 0.0
    var division = false
    var multiplication = false
    var addition = false
    var subtraction = false
    var resultExist = false
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    @IBAction func AllClear(_ sender: UIButton) {
        temp = ""
        firstNumber = 0.0
        secondNumber = 0.0
        resultExist = false
        if division {
            division = false
        }
        if multiplication{
            multiplication = false
        }
        if addition{
            addition = false
        }
        if subtraction{
            subtraction = false
        }
        ResultLabel.text = "0"
    }
    
    @IBAction func DivisionButton(_ sender: UIButton) {
        division = true
        multiplication = false
        addition = false
        subtraction = false
        
           if !resultExist {
               if let tempValue = Double(temp) {
                   firstNumber = Double(tempValue)
                   temp = ""
               } else {
                   ResultLabel.text = ""
                   return
               }
           } else {
               firstNumber = result
           }
        temp = ""
    }
    
    @IBAction func MultiplicationButton(_ sender: UIButton) {
        multiplication = true
        division = false
        addition = false
        subtraction = false
        
           if !resultExist {
               if let tempValue = Double(temp) {
                   firstNumber = Double(tempValue)
                   temp = ""
               } else {
                   ResultLabel.text = ""
                   return
               }
           } else {
               firstNumber = result
           }
        temp = ""
    }
    
    @IBAction func SubtractionButton(_ sender: UIButton) {
        if temp == "" && firstNumber == 0.0{
            temp = "-"
        }
        else{
            subtraction = true
            multiplication = false
            division = false
            addition = false
            
            if !resultExist {
                if let tempValue = Double(temp) {
                    firstNumber = Double(tempValue)
                    temp = ""
                } else {
                    ResultLabel.text = ""
                    return
                }
            } else {
                firstNumber = result
            }
            temp = ""
        }
    }
    
    @IBAction func AdditionButton(_ sender: UIButton) {
        addition = true
        multiplication = false
        division = false
        subtraction = false
        
           if !resultExist {
               if let tempValue = Double(temp) {
                   firstNumber = Double(tempValue)
                   
               } else {
                   ResultLabel.text = ""
                   return
               }
           } else {
               firstNumber = result
           }
        
        temp = ""
    }
    
    
    @IBAction func EqualButton(_ sender: UIButton) {
        if let tempValue = Double(temp) {
                secondNumber = Double(tempValue)
                if division {
                    result = firstNumber / secondNumber
                    division = false
                }
                if multiplication{
                    result = firstNumber*secondNumber
                    multiplication = false
                }
                if addition{
                    result = firstNumber+secondNumber
                    addition = false
                }
                if subtraction{
                    result = firstNumber-secondNumber
                    subtraction = false
                }
                ResultLabel.text = String(result)
                firstNumber = result
            } else {
                ResultLabel.text = ""
            }
        resultExist = true
    }
    
    
    @IBAction func DecimalPoint(_ sender: UIButton) {
        if !temp.contains(".") {
                temp = temp + "."
            }
            ResultLabel.text = temp
    }
    
    @IBAction func NumberZero(_ sender: UIButton) {
        temp = temp+"0"
        ResultLabel.text = temp
    }
    
    
    @IBAction func NumberOne(_ sender: UIButton) {
        temp = temp+"1"
        ResultLabel.text = temp
    }
    
    
    @IBAction func NumberTwo(_ sender: UIButton) {
        temp = temp+"2"
        ResultLabel.text = temp
    }
    
    @IBAction func NumberThree(_ sender: UIButton) {
        temp = temp+"3"
        ResultLabel.text = temp
    }
    
    @IBAction func NumberFour(_ sender: UIButton) {
        temp = temp+"4"
        ResultLabel.text = temp
    }
    
    @IBAction func NumberFive(_ sender: UIButton) {
        temp = temp+"5"
        ResultLabel.text = temp
    }
    
    @IBAction func NumberSix(_ sender: UIButton) {
        temp = temp+"6"
        ResultLabel.text = temp
    }
    
    
    @IBAction func NumberSeven(_ sender: UIButton) {
        temp = temp+"7"
        ResultLabel.text = temp
    }
    
    
    @IBAction func NumberEight(_ sender: UIButton) {
        temp = temp+"8"
        ResultLabel.text = temp
    }
    
    @IBAction func NumberNine(_ sender: UIButton) {
        temp = temp+"9"
        ResultLabel.text = temp
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

