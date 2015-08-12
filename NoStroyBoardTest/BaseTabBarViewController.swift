//
//  BaseTabBarViewController.swift
//  NoStroyBoardTest
//
//  Created by Hao Xin on 15/8/10.
//  Copyright (c) 2015年 Hao Xin. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController, UITabBarControllerDelegate {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
    
  }
  
}
