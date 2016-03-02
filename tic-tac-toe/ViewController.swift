//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Lindsey Baker on 3/2/16.
//  Copyright © 2016 Lindsey Baker. All rights reserved.
//

import UIKit

var xIsSelected: Bool = true

var playerName: String = "Player"

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var xSelected: UIButton!
    @IBOutlet weak var oSelected: UIButton!
    @IBAction func choosingX(sender: AnyObject) {
        
        xSelected.backgroundColor = UIColor.blueColor()
        
        xSelected.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        oSelected.backgroundColor = UIColor.whiteColor()
        
        oSelected.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
        xIsSelected = true
        
        print(xIsSelected)
        
    }
    
    @IBAction func choosingO(sender: AnyObject) {
        
        oSelected.backgroundColor = UIColor.blueColor()
        
        oSelected.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        xSelected.backgroundColor = UIColor.whiteColor()
        
        xSelected.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
        xIsSelected = false
        
        print(xIsSelected)
        
    }
    
    @IBAction func continueButton(sender: AnyObject) {
        
        playerName = nameInput.text!
        print(playerName)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameInput.delegate = self
        
        xSelected.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
        oSelected.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Closes the keyboard when tapped elsewhere
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    // Close the keyboard when "return" pressed
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }

}

