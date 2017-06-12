//
//  ViewController.swift
//  swiftDocs
//
//  Created by SuzukiShigeru on 2017/06/09.
//  Copyright © 2017年 Shigeru Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    private var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tWidth: CGFloat = 200
        let tHeight: CGFloat = 30
        let posX: CGFloat = (self.view.bounds.width - tWidth)/2
        let posY: CGFloat = (self.view.bounds.height - tHeight)/2
        
        myTextField = UITextField(frame: CGRect(x: posX, y: posY, width: tWidth, height: tHeight))
        
        myTextField.text = "Hello textField!"
        
        myTextField.delegate = self
        
        myTextField.borderStyle = .roundedRect
        
        myTextField.clearButtonMode = .whileEditing
        
        self.view.addSubview(myTextField)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing: \(textField.text!)")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing: \(textField.text!)")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn: \(textField.text!)")
        
        textField.resignFirstResponder()
        
        return true
    }

}

