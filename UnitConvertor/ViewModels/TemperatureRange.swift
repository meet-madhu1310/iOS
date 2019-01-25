//
//  TemperatureRange.swift
//  UnitConvertor
//
//  Created by Meet Madhu on 1/21/19.
//  Copyright © 2019 Meet Madhu. All rights reserved.
//

import UIKit
import Foundation

class TemperatureRange: NSObject, UIPickerViewDataSource {
    
    let values = (-100...100).map { $0 } //{$0} closure, completion block for map
    
    //Date source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
}
