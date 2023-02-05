//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Kripa Lamichhane on 1/30/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    // Pets label increase or decrease
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberOfPetsLabel.text = "\(Int(sender.value))"
      }
    //Creating introduction
    @IBAction func introduceDidTapped(_ sender: UIButton) {
           
           // Lets us choose the title we have selected from the segmented control
           // In our example that is whether it is first, second, third or forth
           let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
           
           // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
           let introduction = "Hey,Iam\(firstNameTextField.text!)\(lastNameTextField.text!) and I attend\(schoolNameTextField.text!).Iam currently in my \(year!) year and I own\(numberOfPetsLabel.text!) dogs.It is \(morePetsSwitch.isOn) that I want more pets."
           
           print(introduction)
       }
// Alert box
    @IBAction func IntroduceDidTapped(_ sender: UIButton) {
            
            // Let's us chose the title we have selected from the segmented control
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
            // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
            // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
            let introduction = "Hey, I am \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own  \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
            
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .yellow
        
        
    }
    
}
