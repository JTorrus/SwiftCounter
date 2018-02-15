//
//  CounterBrain.swift
//  SimpleiOsApp
//
//  Created by Alumne on 15/2/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import Foundation

class CounterBrain {
    var counter: Int = 0
    
    func minusOperation() {
        self.counter -= 1
    }
    
    func plusOperation() {
        self.counter += 1
    }
    
    func reset() {
        self.counter = 0
    }
}
