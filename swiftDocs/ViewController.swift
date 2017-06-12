//
//  ViewController.swift
//  swiftDocs
//
//  Created by SuzukiShigeru on 2017/06/09.
//  Copyright © 2017年 Shigeru Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    private var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let iWidth: CGFloat = 300
        let iHeight: CGFloat = 100
        let posX: CGFloat = (self.view.bounds.width - iWidth)/2
        let posY: CGFloat = (self.view.bounds.height - iHeight)/2
        
        myImageView = UIImageView(frame: CGRect(x: posX, y: posY, width: iWidth, height: iHeight))
        
        let myImage = UIImage(named: "ramen.jpg")!
        
        myImageView.image = myImage
        
        self.view.addSubview(myImageView)
        
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

