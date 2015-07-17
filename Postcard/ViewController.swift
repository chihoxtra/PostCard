//
//  ViewController.swift
//  Postcard
//
//  Created by pun samuel on 14/7/15.
//  Copyright (c) 2015 Samuel Pun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    // for challenge #1
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // this is for challenge #1 manipulating the name Label and text fields
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        // manipulating the message label and text fields
        messageLabel.hidden =  false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor(red:1.0, green:1.0,blue:0.0,alpha:1.0)
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sender.backgroundColor = UIColor.redColor()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
}

