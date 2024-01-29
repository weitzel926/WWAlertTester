//
//  ViewController.swift
//  WWAlertTesterApp
//
//  Created by Wade Weitzel on 1/29/24.
//

import UIKit
import WWAlertTesterFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        let interface = AlertTesterInterface()
        
        interface.displayAlert()
    }
    
}

