//
//  ViewController.swift
//  QuickTestApp
//
//  Created by Nicholas Smith on 09/07/2018.
//  Copyright © 2018 PAL Technologies Ltd. All rights reserved.
//

import UIKit
import PalBleSwift

class ViewController: UIViewController, ScanListener {
    func onScanResultsChanged() {
        print("Scan results changed!")
    }
    
    func onScanTimeOut() {
        print("Scan timed out")
    }
    
    func onScanError(error: String) {
        print("Scan Error")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bye()
        whyNotWork()
        
        let palBle = PalBle()
        palBle.setListener(listener: self)
        palBle.startScan()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

