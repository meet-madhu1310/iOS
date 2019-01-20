//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Meet Madhu on 2019-01-15.
//  Copyright © 2019 Meet Madhu. All rights reserved.
//

import Foundation

class Stopwatch {
    private var startTime: Date?
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    func start() {
        startTime = Date()
    }
    
    func stop() {
        startTime = nil
    }
}
