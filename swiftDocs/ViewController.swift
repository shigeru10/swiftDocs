//
//  ViewController.swift
//  swiftDocs
//
//  Created by SuzukiShigeru on 2017/06/09.
//  Copyright © 2017年 Shigeru Suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myItems: NSArray = ["TEST1", "TEST2", "TEST3"]
    private var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mySmallLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 0, width: 300, height: 150))
        mySmallLabel.text = "小さめのフォント"
        mySmallLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        self.view.addSubview(mySmallLabel)
        
        let myNormalLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 30, width: 200, height: 150))
        myNormalLabel.text = "システm標準のフォントサイズ"
        myNormalLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        self.view.addSubview(myNormalLabel)
        
        let myButtonLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 60, width: 300, height: 150))
        myButtonLabel.text = "UIButtonのフォントサイズ"
        myButtonLabel.font = UIFont.systemFont(ofSize: UIFont.buttonFontSize)
        self.view.addSubview(myButtonLabel)
        
        let myCustomLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 90, width: 300, height: 150))
        myCustomLabel.text = "ポイント20のフォントサイズ"
        myCustomLabel.font = UIFont.systemFont(ofSize: CGFloat(20))
        self.view.addSubview(myCustomLabel)
        
        let myItalicLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 120, width: 300, height: 150))
        myItalicLabel.text = "Italicフォント"
        myItalicLabel.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)
        self.view.addSubview(myItalicLabel)
        
        let myBoldLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 150, width: 300, height: 150))
        myBoldLabel.text = "Boldフォント"
        myBoldLabel.font = UIFont.boldSystemFont(ofSize: UIFont.labelFontSize)
        self.view.addSubview(myBoldLabel)
        
        let myArialLabel: UILabel = UILabel(frame: CGRect(x: 25, y: 180, width: 300, height: 150))
        myArialLabel.text = "ArialHebrew"
        myArialLabel.font = UIFont(name: "ArilHebew", size: UIFont.labelFontSize)
        self.view.addSubview(myArialLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

