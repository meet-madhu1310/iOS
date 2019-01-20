//
//  ViewController.swift
//  Stopwatch
//
//  Created by Meet Madhu on 2019-01-15.
//  Copyright © 2019 Meet Madhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stopwatch = Stopwatch()
    var timer: Timer?
    
    var counter = 0.1

    @IBOutlet weak var stopWatchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startButtonTapped(_ sender: UIButton) {
            stopwatch.start()
            
            timer = Timer.scheduledTimer(timeInterval: counter, target: self, selector: #selector(updateStopWatchLabel(timer:)), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
            stopwatch.stop()
    }
    
    @objc func updateStopWatchLabel(timer: Timer) {
        if stopwatch.isRunning {
            counter += 0.1
            
            let minutes = Int(counter / 60)
            let seconds = Int(counter.truncatingRemainder(dividingBy: 60))
            let tenths = Int((counter * 10).truncatingRemainder(dividingBy: 10))
            
            stopWatchLabel.text = String(format: "%02d:%02d:%02d", minutes, seconds, tenths)
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        timer?.invalidate()
        stopWatchLabel.text = "00:00:00"
        counter = 1.0
    }
    
    deinit {
        if let timer = self.timer {
            timer.invalidate()
        }
    }
}

