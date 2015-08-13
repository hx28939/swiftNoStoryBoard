//
//  ThirdCollectionViewCell.swift
//  NoStroyBoardTest
//
//  Created by Hao Xin on 15/8/13.
//  Copyright (c) 2015年 Hao Xin. All rights reserved.
//

import UIKit

class ThirdCollectionViewCell: UICollectionViewCell {

  @IBOutlet weak var textLabel: UILabel!
  
  func setup(index: Int) {
    textLabel.text = String(index)
  }
}
