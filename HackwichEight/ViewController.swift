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
    

var currentValue = 0
    
var targetValue = 0
    
override func viewDidLoad()
{
super.viewDidLoad()
// Do any additional setup after loading the view.
   
    slider.value = 50
    
    currentValue = Int(slider.value)
    
    //targetValue = Int.random(in: 0...100)
    
    //calling function

    startNewRound()
    
   
}

    
@IBAction func sliderHasMoved(_ sender: Any) {

   currentValue = Int(slider.value)
   
}
    
    func startNewRound(){
        
        targetValue = Int.random(in: 0...100)
       
        currentValue = Int(slider.value)
        updateTargetLabel()
        
    }
    
    func updateTargetLabel(){
        targetLabel.text = String(targetValue)
        
       
    }
    
    

@IBAction func myGuessButtonPressed(_ sender: Any)
{

    let message = "The value is \(currentValue)" + "\nThe Target value for this round was: \(targetValue)"

    let alert = UIAlertController(title: "Guess the Number Game", message: message , preferredStyle: .alert)

    let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
    
    alert.addAction(action)
        
    present(alert, animated: true, completion: nil)
    
    startNewRound()
    }
}
