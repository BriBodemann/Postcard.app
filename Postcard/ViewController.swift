//
//  ViewController.swift
//  Postcard
//
//  Created by Brian Bodemann on 12/11/14.
//  Copyright (c) 2014 Brian Bodemann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    var nameEdited = false
    var messageEdited = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mailButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //TODO: Replace label text with enterNameTextField
        messageLabel.text = enterNameTextField.text+":\n" + enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel.hidden = false
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        //TODO: Activate label
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal )
        mailButton.enabled = false
    }

    @IBAction func enterNameTextFieldEdited(sender: UITextField) {
        nameEdited = true
  }

    @IBAction func enterMessageTextFieldEdited(sender: UITextField) {
        if nameEdited { mailButton.enabled = true }
    }


}