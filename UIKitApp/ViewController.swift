//
//  ViewController.swift
//  UIKitApp
//
//  Created by Danylo Pechatkin on 25/05/2022.
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
        mainLabel.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        
    }

    @IBAction func segmentedControlAction() {
    }
    
}

