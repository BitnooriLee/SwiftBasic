//
//  ViewController.swift
//  SignUpForm
//
//  Created by Bitnoori Lee on 2018-08-26.
//  Copyright © 2018 Bitnoori Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
   
    @IBOutlet weak var outputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        nameTextField.delegate = self
//        emailTextField.delegate = self
     
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
//        nameTextField.resignFirstResponder()
//        emailTextField.resignFirstResponder()
//        passwordTextField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    @IBAction func signUpAiction(_ sender: Any) {
        outputTextView.text = "Hello \(nameTextField.text!),\n Welcome to the World of Swift!"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

