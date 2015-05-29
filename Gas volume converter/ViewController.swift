//
//  ViewController.swift
//  Gas volume converter
//
//  Created by Gemma Shearer on 29/05/2015.
//  Copyright (c) 2015 GemmaShearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var molesOfGas: UITextField!
    @IBOutlet weak var volumeOfGas: UILabel!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// the following code is disgusting and needs to be refactored
    @IBAction func convertButton(sender: UIButton) {
        let molesEntered = molesOfGas.text
        var molesEnteredDouble = Double((molesEntered as NSString).doubleValue)
        // as of now the figure shoould be a double - it shouldn't need unwrapping or anything
        let molarVolumeOfGas = 24
        volumeOfGas.hidden = false
        molesEnteredDouble *= 24
        let convertedGasVolume = "The volume is " + "\(molesEnteredDouble)" + " dm3"
        volumeOfGas.text = convertedGasVolume
        
        }

    //TODO convert the string to a double rather than an integer
}





        