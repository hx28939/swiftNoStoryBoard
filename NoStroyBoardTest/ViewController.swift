//
//  ViewController.swift
//  NoStroyBoardTest
//
//  Created by Hao Xin on 15/8/7.
//  Copyright (c) 2015年 Hao Xin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.yellowColor()
    let textLabel = UILabel(frame: CGRect(x: view.frame.width / 2 - 20, y: view.frame.height / 2 - 20, width: 40, height: 40))
    textLabel.text = "Helllllllo"
    view.addSubview(textLabel)
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

