//
//  ViewController.swift
//  swiftDocs
//
//  Created by SuzukiShigeru on 2017/06/09.
//  Copyright © 2017年 Shigeru Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myInfoDarkButton: UIButton!
    private var myInfoLightButton: UIButton!
    private var myAddButton: UIButton!
    private var myDetailButton: UIButton!
    private var mySystemButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myInfoDarkButton = UIButton(type: .infoDark)
        myInfoLightButton = UIButton(type: .infoLight)
        myAddButton = UIButton(type: .contactAdd)
        myDetailButton = UIButton(type: .detailDisclosure)
        mySystemButton = UIButton(type: .system)
        
        let posX: CGFloat = self.view.frame.width/2
        myInfoDarkButton.layer.position = CGPoint(x: posX, y: 50)
        myInfoLightButton.layer.position = CGPoint(x: posX, y: 100)
        myAddButton.layer.position = CGPoint(x: posX, y: 150)
        myDetailButton.layer.position = CGPoint(x: posX, y: 200)
        
        let sWidth: CGFloat = 200
        let sHeight: CGFloat = 50
        
        let sposX: CGFloat = self.view.frame.width/2 - sWidth/2
        let sposY: CGFloat = 250
        
        mySystemButton.frame = CGRect(x: sposX, y: sposY, width: sWidth, height: sHeight)
        
        mySystemButton.setTitle("MySystemButton", for: .normal)
        
        myInfoDarkButton.tag = 1
        myInfoLightButton.tag = 2
        myAddButton.tag = 3
        myDetailButton.tag = 4
        mySystemButton.tag = 5
        
        myInfoDarkButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
        myInfoLightButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
        myAddButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
        myDetailButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
        mySystemButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
        
        self.view.addSubview(myInfoDarkButton)
        self.view.addSubview(myInfoLightButton)
        self.view.addSubview(myAddButton)
        self.view.addSubview(myDetailButton)
        self.view.addSubview(mySystemButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    internal func onClickMyButton(sender: UIButton) {
        print("onClickMyButton:")
        print("sender.currentTitle: \(sender.currentTitle)")
        print("sender.tag: \(sender.tag)")
    }
    
}

