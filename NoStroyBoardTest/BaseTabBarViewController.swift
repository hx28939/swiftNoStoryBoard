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
    
    navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: UIBarPosition.Any, barMetrics: UIBarMetrics.Default)
    navigationController?.navigationBar.shadowImage = UIImage()
    navigationController?.navigationBar.translucent = true
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
    
  }
  
}
