//
//  UnitConvertor.swift
//  UnitConvertor
//
//  Created by Meet Madhu on 1/21/19.
//  Copyright © 2019 Meet Madhu. All rights reserved.
//

import Foundation

class UnitConverter {
    func degreeFarenheit(degreeCelcius: Int) -> Int {
        return Int(1.8 * Float(degreeCelcius) + 32.0)
    }
    
//    func degreeCelcius(degreeFarenheit: Int) -> Int {
//        return Int((Float(degreeFarenheit) - 32) / 1.8)
//    }
}
