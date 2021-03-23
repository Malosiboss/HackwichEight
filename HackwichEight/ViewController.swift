//
//  ViewController.swift
//  HackwichEight
//
//  Created by Noah Nua on 3/9/21.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var slider: UISlider!
    
@IBOutlet weak var targetLabel: UILabel!
    
//presets values for calling later
var currentValue = 0
    //presets values for calling later
var targetValue = 0
    
override func viewDidLoad()
{
super.viewDidLoad()
// Do any additional setup after loading the view.
   
    //sets slider to the middle of the slide bar
    slider.value = 50
    
    currentValue = Int(slider.value)
    
    //targetValue = Int.random(in: 0...100)
    
    //calling function
    startNewRound()
    
    //set imiage to slider
    let thumbImiageNormal = UIImage(named: "SliderThumb-Normal")
    slider.setThumbImage(thumbImiageNormal, for: .normal)
}

    //When slider moves it woll run the function
@IBAction func sliderHasMoved(_ sender: Any) {

    //sets current value to what ever the slider is on
   currentValue = Int(slider.value)
   
}
    //This function will start an new round
    func startNewRound(){
        // this sets the target value to a randome number between 1 and 100
        targetValue = Int.random(in: 0...100)
       //again pulles the current value of of the slider as an intager
        currentValue = Int(slider.value)
        //call the update target lable function
        updateTargetLabel()
        
    }
    //updates the targe label number
    func updateTargetLabel(){
        //Sets the text for target lable to the target value as a string
        targetLabel.text = String(targetValue)
        
       
    }
    
    
//Function that runs after button has been pressed
@IBAction func myGuessButtonPressed(_ sender: Any)
{
//sets a msg for the alert screen to show showing the target and the sliders current value
    let message = "The value is \(currentValue)" + "\nThe Target value for this round was: \(targetValue)"
//Sets the of the alert msg
    let alert = UIAlertController(title: "Guess the Number Game", message: message , preferredStyle: .alert)
//Sets the action button label to statr a new game
    let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
    //calling the alert screen as an action
    alert.addAction(action)
       //shows the alert screen on the app
    present(alert, animated: true, completion: nil)
    // call on newround function to begin the next round 
    startNewRound()
    }
}
