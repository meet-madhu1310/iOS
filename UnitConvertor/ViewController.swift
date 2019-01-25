//
//  ViewController.swift
//  UnitConvertor
//
//  Created by Meet Madhu on 1/21/19.
//  Copyright © 2019 Meet Madhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var temperaturePicker: UIPickerView!
    @IBOutlet var temperatureRange: TemperatureRange!
    //1
    
    let unitConverter = UnitConverter()
    let userDefaultLastRowKey = "defaultCelciusPickerRow"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        temperaturePicker.delegate = self
        temperaturePicker.selectRow(temperatureRange.values.count / 2, inComponent: 0, animated: true)
        let defaultPickerRow = initialPickerRow()
        
        temperaturePicker.selectRow(defaultPickerRow, inComponent: 0, animated: true)
        pickerView(temperaturePicker, didSelectRow: defaultPickerRow, inComponent: 0)

    }
    
    //2
    
    func initialPickerRow() -> Int {
        
        if let savedRow = UserDefaults.standard.object(forKey: userDefaultLastRowKey) as? Int {
            return savedRow
        }
        
        return temperaturePicker.numberOfRows(inComponent: 0) / 2
    }
    
    func saveSelectedRow(row: Int) {
        let defaults = UserDefaults.standard
        defaults.set(row, forKey: userDefaultLastRowKey)
        defaults.synchronize()
    }
    
    //3

}

extension ViewController: UIPickerViewDelegate {

    //Data delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        if tempValuesSegment.selectedSegmentIndex == 0{
            return "\(temperatureRange.values[row])°C"
        } else {
            return "\(temperatureRange.values[row])°F"
        }
    
    }
    
    //4
    
}

