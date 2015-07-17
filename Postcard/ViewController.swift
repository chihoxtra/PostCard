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
        // change the label
        
        messageLabel.hidden =  false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor(red:1.0, green:1.0,blue:0.0,alpha:1.0)
        enterMessageTextField.text = ""
        sender.backgroundColor = UIColor.redColor()
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
}

