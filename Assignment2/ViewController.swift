//
//  ViewController.swift
//  Assignment2
//
//  Created by GGKU5MACBOOK036 on 18/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterNumberLabel: UILabel!
    @IBOutlet weak var displayTextLabel: UILabel!
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performCal = false
    var operation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func selectTheNumberOnTap(_ sender: UIButton) {
        
    }
    @IBAction func buttonEight(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("8")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("8")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("9")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("9")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    @IBAction func buttonSeven(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("7")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("7")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    @IBAction func buttonSix(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("6")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("6")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    @IBAction func buttonFive(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("5")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("5")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("4")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("4")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    
    @IBAction func buttonThree(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("3")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("3")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    
    @IBAction func buttonTwo(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("2")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("2")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    
    @IBAction func buttonOne(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("1")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("1")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    @IBAction func buttonZero(_ sender: Any) {
        if performCal {
            enterNumberLabel.text = String("0")
            performCal = false
        } else {
            enterNumberLabel.text = enterNumberLabel.text! + String("0")
        }
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    @IBAction func decimalOnTapped(_ sender: Any) {
        enterNumberLabel.text = enterNumberLabel.text! + "."
        numberOnScreen = formatDouble(enterNumberLabel.text)
    }
    
    @IBAction func clearButtonOnTapped(_ sender: Any) {
        enterNumberLabel.text = ""
        numberOnScreen = 0
        previousNumber = 0
        operation = 0
    }
    
    @IBAction func resultButtonOnTapped(_ sender: Any) {
            switch(operation) {
            case 11:
                enterNumberLabel.text = formatResult(previousNumber - numberOnScreen)
                break // Minus
            case 12:
                enterNumberLabel.text = formatResult(previousNumber * numberOnScreen)
                break // multiple
            case 13:
                enterNumberLabel.text = formatResult(previousNumber + numberOnScreen)
                break // pluse
            case 14:
                enterNumberLabel.text = formatResult((previousNumber*numberOnScreen)/100)
                break // Module
            case 15:
                enterNumberLabel.text = formatResult(previousNumber / numberOnScreen)
                break // Division
            case 16:
                enterNumberLabel.text = formatResult(pow(previousNumber, numberOnScreen))
                break // Power
            default : break
            }
        }
    
    @IBAction func buttonCalculationOnTapped(_ sender: UIButton) {
        
        previousNumber = formatDouble(enterNumberLabel.text)
        
        switch(sender.tag) {
        case 11 : // Minus
            enterNumberLabel.text = "-"
            break
        case 12: // Multiple
            enterNumberLabel.text = "*"
            break
        case 13 : // Pluse
            enterNumberLabel.text = "+"
            break
        case 14: // Module
            enterNumberLabel.text = "%"
            break
        case 15: //Division
            enterNumberLabel.text = "÷"
            break
        case 16: // Power
            enterNumberLabel.text = "^"
            break
        default : break
        }
        operation = sender.tag
        performCal = true
        
        
    }
    
    
    func formatResult(_ result: Double) -> String {
        
        if(result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    func formatDouble(_ value: String?) -> Double {
        if let number = Double(enterNumberLabel.text ?? "") {
            return number
        }
        return 0
    }
}

