//
//  ViewController.swift
//  HackwichEight
//
//  Created by Noah Nua on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func sliderHasMoved(_ sender: Any)
    {
        print("The value of the slider is:\(slider.value)")
        currentValue = Int(slider.value)
    }
    
  
    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        //5. new variable message that displays a message that includes currentValue
        let message = "The value is: \(currentValue)"
        
        //1. create alert view
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)
        
        //2. Button that user tapd to dismissview controlor
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
        
        //3.add the button to alert view
        alert.addAction(action)
        
        //4. present alertview on screen
        present(alert, animated: true, completion: nil)
        
      
    
    }
    

}

