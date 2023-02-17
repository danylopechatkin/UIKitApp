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
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var slider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.textColor = .purple
        mainLabel.numberOfLines = 3
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        mainLabel.text = String(slider.value)
        
        
    }
    
    @IBAction func segmentedControlAction() {
        
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        default:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .yellow
            
        }
    }
    @IBAction func sliderAction() {
        mainLabel.text = String(slider.value)
        let sliderValue = CGFloat (slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
    
    
    @IBAction func doneButtonTest() {
        guard let inputText =  textField.text, !inputText.isEmpty else {
            showAlert(title: "Textfield is empty", message: "Please enter your name")
            return }
        
        if let _ = Double(inputText) {
            showAlert(title: "Wrong foramt", message: "Please enter your name")
            return
        }
        mainLabel.text = textField.text
        textField.text = ""
    }}

// MARK: - PRivate MEthod
extension ViewController {
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.textField.text = ""
            
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

