//
//  ViewController.swift
//  introduceStudent
//
//  Created by ivory sarpong on 12/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitcher: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!

    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitcher.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                      
                      // A way to dismiss the box once it pops up
                      let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                      
                      // Passing this action to the alert controller so it can be dismissed
                      alertController.addAction(action)
                      
                      present(alertController, animated: true, completion: nil)
    }
    
@IBOutlet weak var numberOfPetsLabel: UILabel!

    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
       numberOfPetsLabel.text = "\(Int(sender.value))"
   }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

  
