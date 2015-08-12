//
//  SecondViewController.swift
//  NoStroyBoardTest
//
//  Created by Hao Xin on 15/8/11.
//  Copyright (c) 2015年 Hao Xin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.registerNib(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "TestTableViewCell")

      self.edgesForExtendedLayout = UIRectEdge.None
      
      navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
      navigationController?.navigationBar.shadowImage = UIImage()
      navigationController?.navigationBar.translucent = true
    }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  convenience init() {
    var nibNameOrNil = String?("SecondViewController")
    if NSBundle.mainBundle().pathForResource(nibNameOrNil, ofType: "nib") == nil {
      nibNameOrNil = nil
    }
    self.init(nibName: nibNameOrNil, bundle: nil)
  }
  
  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("TestTableViewCell", forIndexPath: indexPath) as! TestTableViewCell
    cell.setup(indexPath.row)
    return cell
  }
  
}
