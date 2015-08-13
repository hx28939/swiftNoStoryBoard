//
//  ThirdViewController.swift
//  NoStroyBoardTest
//
//  Created by Hao Xin on 15/8/12.
//  Copyright (c) 2015年 Hao Xin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
  @IBOutlet weak var collectionView: UICollectionView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.backgroundColor = UIColor.purpleColor()
    collectionView.collectionViewLayout = SpringFlowLayout()
    collectionView.registerNib(UINib(nibName: "ThirdCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "thirdCell")
  }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  convenience init() {
    var nibName = String?("ThirdViewController")
    if NSBundle.mainBundle().pathForResource(nibName, ofType: "nib") == nil {
      nibName = nil
    }
    self.init(nibName: nibName, bundle: nil)
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 150
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("thirdCell", forIndexPath: indexPath) as! ThirdCollectionViewCell
    cell.setup(indexPath.item)
    return cell
  }
  
}
