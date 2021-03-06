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
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .black
        slider.maximumTrackTintColor = .white
        slider.thumbTintColor = .blue
        
        mainLabel.text = String(slider.value)
        
        
    }

    @IBAction func segmentedControlAction() {
        
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The First Segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The Second Segment is selected"
            mainLabel.textColor = .blue
       default:
            mainLabel.text = "The Third Segment is selected"
            mainLabel.textColor = .yellow
        }
        
    }
    @IBAction func slideraction() {
        
        mainLabel.text = String(slider.value)
        let sliderValue = CGFloat(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
    @IBAction func doneButtonPressed() {
        guard let inputText = textField.text, !inputText.isEmpty else {
            print("Text Field is empty")
            return
        }
        
        if let _ = Double(inputText){
            print("Wrong format")
            return
        }
        
        mainLabel.text = textField.text
    }

}

//MARK: - Private Methods 

extension ViewController {
    
}
