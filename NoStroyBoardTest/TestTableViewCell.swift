//
//  TestTableViewCell.swift
//  NoStroyBoardTest
//
//  Created by Hao Xin on 15/8/12.
//  Copyright (c) 2015年 Hao Xin. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

  @IBOutlet weak var testLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  func setup(row: Int) {
    testLabel.text = String(row)
    backgroundColor = UIColor.purpleColor()
  }
  
}
