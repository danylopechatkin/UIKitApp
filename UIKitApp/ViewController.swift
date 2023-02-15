//
//  ViewController.swift
//  UIKitApp
//
//  Created by Danylo Pechatkin on 31/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        
        
        
    }

    @IBAction func segmentedControlAction() {
    }
    
}

