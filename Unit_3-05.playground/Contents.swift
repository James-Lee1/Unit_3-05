
// Created on: Sep 2017
// Created by: James Lee
// Created for: ICS3U
// This program displays the factorial of a number
// this will be commented out when code moved to Xcode

import PlaygroundSupport

// Import the library needed for the UI
import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // Make sure there are no constants
    var number = 0
    var counter = 1
    var factorial = 0
    
    // properties
    var questionLabel : UILabel!
    var checkButton : UIButton!
    var answerLabel : UILabel!
    var numberTextbox : UITextField!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        
        // Make background white
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        self.view = view
        
        // Code for textbox where you input the number
        numberTextbox = UITextField()
        numberTextbox.placeholder = "Enter an integer"
        numberTextbox.textColor = UIColor.black
        view.addSubview(numberTextbox)
        numberTextbox.translatesAutoresizingMaskIntoConstraints = false
        numberTextbox.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        numberTextbox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // Code for button that calculates the factorial
        checkButton = UIButton()
        checkButton.setTitle("Check", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.addTarget(self, action: #selector(checkNumber), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // Code for the question asking the number to find factorial
        questionLabel = UILabel()
        questionLabel.text = "What number's factorial would you like?"
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // Code for the label that shows the output once entered an input
        answerLabel = UILabel()
        answerLabel.text = ""
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 50).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumber() {
        // Happens when the button is clicked
        
        // Assigns the input within the textbox to the actual variable
        let numberTextbox = self.numberTextbox.text
        
        // Converts it to a number the computer can compute
        var number = Int(numberTextbox!)!
        factorial = number
        
        //Finds factorial
        while number > counter {
            factorial = factorial * counter
            counter = counter + 1
        }
        
        if number < 0 {
            answerLabel.text = "Please choose valid option"
        }
        
        else {
            answerLabel.text = "The factorial is " + String(describing: factorial)
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


