//
//  ViewController.swift
//  SageCreekRobotics
//
//  Created by Michael on 8/6/15.
//  Copyright (c) 2015 Michael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declaration of outlets
    @IBOutlet var myView: UIView!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myBar: UIProgressView!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var myLabelDebug: UILabel!
    @IBOutlet weak var myTextView: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImage: UIImageView!
    
    
    //Variable delcaration
    var myVar = true
    var myCounter: Float = 0.0
    var myStepperValue = ""
    var myFloat:Float = 0
    var myCounterFraction:Float = 0.0
    
    //My Images
    var myAstrid1 = UIImage(named: "myAstrid1")
    var myAstrid2 = UIImage(named: "myAstrid2")
    
    //Color setup
    var myInRed: CGFloat = 255
    var myInGreen: CGFloat = 105
    var myInBlue: CGFloat = 180
    
    var myInRed2: CGFloat = 0
    var myInGreen2: CGFloat = 255
    var myInBlue2: CGFloat = 255
    
    
    //Stepper Funcion cahnged
    @IBAction func myStepperValueChanged(sender: UIStepper) {
        
    myStepperValue = Int(sender.value).description
        
    myLabel2.text = Int(sender.value).description
        
    }
    
    @IBAction func myButtonPressed(sender: UIButton) {
        
        
    myCounter++
            
    myCounterFraction = myCounter / 100
                
    myBar.setProgress(myCounterFraction, animated: true)
        
    myLabel.text = "\(Int((myBar.progress)*100))"
        
        
    }
    
    //Switch action
    @IBAction func mySwitchAction(sender: UISwitch) {
        
        
        //Color translator From 255 to 1
        var myRed: CGFloat = myInRed / 255
        var myGreen: CGFloat = myInGreen / 255
        var myBlue: CGFloat = myInBlue / 255
        var myRed2: CGFloat = myInRed2 / 255
        var myGreen2: CGFloat = myInGreen2 / 255
        var myBlue2: CGFloat = myInBlue2 / 255
        
        //Basic logic gate/ Lach
        if myVar == true{
        
        //Changed background color of view
        myView.backgroundColor = UIColor(red: myRed, green: myGreen, blue: myBlue, alpha: 1.0)
            
        myImage.image = myAstrid1
        myVar = false
        }else{
        
        myView.backgroundColor = UIColor(red: myRed2, green: myGreen2, blue: myBlue2, alpha: 1.0)
            
        myImage.image = myAstrid2
        //Latch reset
        myVar = true
            
        }
        
        
        
    //myLabelDebug.text = myTextView.text
        
    }
    
    //Runs first Thus put the inatial startup propertyes here :D
    override func viewDidLoad() {
        super.viewDidLoad()
    
    //Propertys
    //Stepper propertyes
    myStepper.wraps = true
    myStepper.autorepeat = true
    myStepper.maximumValue = 10
    
    //ProgressBar Propertys
    myBar.setProgress(0, animated: false)
        
    //Images
    var myImageView1 = UIImageView(image: myAstrid1)
    var myImageView2 = UIImageView(image: myAstrid2)

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

