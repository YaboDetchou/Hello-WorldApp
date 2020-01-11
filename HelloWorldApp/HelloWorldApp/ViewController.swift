//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Yabo Detchou on 1/11/20.
//  Copyright © 2020 Yabo Detchou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textLabel: UILabel!
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    var backgroundColor: UIColor!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroundColor = view.backgroundColor!
        
        textField.delegate = self
    }

    @IBAction func didchangeTextColor(_ sender: Any) {
        textLabel.textColor = UIColor.yellow
    }
    
    @IBAction func didchangeViewColor(_ sender: Any) {
        view.backgroundColor = UIColor.black
    }
    
    
    
    @IBAction func didChangeText(_ sender: Any) {
        
        textLabel.text = ""
             textLabel.text = textField.text
        view.endEditing(true)
    }
    
    
    
    @IBAction func tapguesture(_ sender: Any) {
        
        textLabel.text = "Goodbye 👋 "
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.cyan

        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
       {

           textField.resignFirstResponder()
           return true
       }
    
}

