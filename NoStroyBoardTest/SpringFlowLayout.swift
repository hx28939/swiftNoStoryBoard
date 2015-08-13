//
//  SpringFlowLayout.swift
//  NoStroyBoardTest
//
//  Created by Hao Xin on 15/8/13.
//  Copyright (c) 2015年 Hao Xin. All rights reserved.
//

import UIKit

class SpringFlowLayout: UICollectionViewFlowLayout {
  
  var bounceFactor: CGFloat = 0
  var dynamicAnimator: UIDynamicAnimator?
  
  init(bounceFactor: CGFloat) {
    super.init()
    self.bounceFactor = bounceFactor
  }
  
  convenience override init() {
    self.init(bounceFactor: 500.0)
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  override func prepareLayout() {
    super.prepareLayout()
    if dynamicAnimator == nil {
      dynamicAnimator = UIDynamicAnimator(collectionViewLayout: self)
      
      var contentSize: CGSize = self.collectionViewContentSize()
      var items = super.layoutAttributesForElementsInRect(CGRectMake(0, 0, contentSize.width, contentSize.height)) as! [UICollectionViewLayoutAttributes]
      
      for item in items {
        var spring: UIAttachmentBehavior = UIAttachmentBehavior(item: item, attachedToAnchor: item.center)
        spring.length = 0
        spring.damping = 0.5
        spring.frequency = 1
        dynamicAnimator?.addBehavior(spring)
      }
    }
  }
  
  override func layoutAttributesForElementsInRect(rect: CGRect) -> [AnyObject]? {
    return dynamicAnimator?.itemsInRect(rect)
  }
  
  override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes! {
    return dynamicAnimator?.layoutAttributesForCellAtIndexPath(indexPath)
  }
  
  override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
    var scrollView: UIScrollView = self.collectionView!
    var scrollDelta: CGFloat = newBounds.origin.y - scrollView.bounds.origin.y
    var touchLocation = scrollView.panGestureRecognizer.locationInView(scrollView)
    
    for spring: UIAttachmentBehavior in (dynamicAnimator?.behaviors as! [UIAttachmentBehavior]) {
      var anchorPoint: CGPoint = spring.anchorPoint
      var distanceFromTouch: CGFloat = CGFloat(fabsf(Float(touchLocation.y - anchorPoint.y)))
      var scrollResistance: CGFloat = distanceFromTouch / bounceFactor
      
      var item: UICollectionViewLayoutAttributes = spring.items.first as! UICollectionViewLayoutAttributes
      var center: CGPoint = item.center
      center.y += scrollDelta * scrollResistance
      item.center = center
      
      dynamicAnimator?.updateItemUsingCurrentState(item)
    }
    
    return true
  }
  
  
  
  
  
  
  
  
  
}
