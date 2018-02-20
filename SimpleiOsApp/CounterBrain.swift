//
//  CounterBrain.swift
//  SimpleiOsApp
//
//  Created by Alumne on 15/2/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import Foundation
import UIKit

class CounterBrain {
    var counter: Int = 0
    var historyDisplay: String = ""
    
    func minusOperation() {
        self.counter -= 1
    }
    
    func plusOperation() {
        self.counter += 1
    }
    
    func reset() {
        self.counter = 0
        self.historyDisplay = ""
    }
    
    func writeInHistory(_ sender: UIButton) {
        if let currentSenderText = sender.currentTitle {
            historyDisplay.append("Has pulsado el botón \(currentSenderText) \n")
        }
    }
    
    func clearHistory() {
        historyDisplay = ""
    }
}
