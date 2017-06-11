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
        
        let myButton = UIButton()
        
        let bWidth: CGFloat = 200
        let bHeihgt: CGFloat = 50
        
        let posX: CGFloat = self.view.bounds.width/2 - bWidth/2
        let posY: CGFloat = self.view.bounds.height/2 - bHeihgt/2
        
        myButton.frame = CGRect(x: posX, y: posY, width: bWidth, height: bHeihgt)
        
        myButton.backgroundColor = UIColor.red
        
        myButton.layer.masksToBounds = true
        
        myButton.layer.cornerRadius = 20.0
        
        myButton.setTitle("ボタン(通常)", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)

        myButton.setTitle("ボタン(押された時)", for: .highlighted)
        myButton.setTitleColor(UIColor.black, for: .highlighted)
        
        myButton.tag = 1
        
        myButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        
        self.view.addSubview(myButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    internal func onClickMyButton(sender: UIButton) {
        print("onClickMyButton:")
        print("sender.currentTitle" + String(describing: sender.currentTitle))
        print("sender.tag: \(sender.tag)")
    }
}

