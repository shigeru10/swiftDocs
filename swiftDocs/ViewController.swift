//
//  ViewController.swift
//  swiftDocs
//
//  Created by SuzukiShigeru on 2017/06/09.
//  Copyright © 2017年 Shigeru Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bWidth: CGFloat = 200
        let bHeihgt: CGFloat = 50
        
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posY: CGFloat = self.view.bounds.height/2 - bHeihgt/2
        
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeihgt))
        
        label.backgroundColor = UIColor.orange
        
        label.layer.masksToBounds = true
        
        label.layer.cornerRadius = 20.0
        
        label.text = "Hello Swift!!"

        label.shadowColor = UIColor.gray
        
        label.textAlignment = NSTextAlignment.center
        
        self.view.backgroundColor = UIColor.cyan
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

