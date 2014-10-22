//
//  ViewController.swift
//  Postcard
//
//  Created by Mohammad Adlan on 10/20/14.
//  Copyright (c) 2014 EndQueue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButton(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterName.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterName.text = ""
        enterName.resignFirstResponder()
        
        enterMessage.text = ""
        enterMessage.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

