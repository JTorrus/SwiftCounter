//
//  ViewController.swift
//  SimpleiOsApp
//
//  Created by Alumne on 15/2/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var historyDisplay: UITextView!
    
    var counterClass = CounterBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkingCounter()
        checkingNegativeValue()
        historyDisplay.isEditable = false
        display.text = "\(counterClass.counter)"
        historyDisplay.text = counterClass.historyDisplay
        resetButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionPerformed(_ sender: UIButton) {
        if let senderTitle = sender.currentTitle {
            switch senderTitle {
            case "+":
                counterClass.plusOperation()
                counterClass.writeInHistory(sender)
                display.text = "\(counterClass.counter)"
                historyDisplay.text = counterClass.historyDisplay
            case "-":
                counterClass.minusOperation()
                counterClass.writeInHistory(sender)
                display.text = "\(counterClass.counter)"
                historyDisplay.text = counterClass.historyDisplay
            case "Reset":
                counterClass.reset()
                counterClass.clearHistory()
                display.text = "\(counterClass.counter)"
                historyDisplay.text = counterClass.historyDisplay
            default:
                print("Botón no identificado")
            }
        }
        
        checkingCounter()
        checkingNegativeValue()
    }
    
    func checkingCounter() {
        if (counterClass.counter == 0) {
            resetButton.isEnabled = false
        } else {
            resetButton.isEnabled = true
        }
    }
    
    func checkingNegativeValue() {
        if (counterClass.counter < 0) {
            display.textColor = UIColor.red
        } else {
            display.textColor = UIColor.black
        }
    }
    
    
}
