//
//  CapitolButton.swift
//  StatesAndCapitols
//
//  Created by Rye Crowen on 1/14/16.
//  Copyright © 2016 Rye Crowen. All rights reserved.
//

import UIKit

class CapitolButton: UIButton {
  
  var x: CGFloat = 0
  var y: CGFloat = 0

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    self.backgroundColor = UIColor.clearColor()
    self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    self.layer.borderColor = UIColor(red: 199/255, green: 99/255, blue: 99/255, alpha: 1.0).CGColor
    self.layer.borderWidth = CGFloat(3)
    
  }
  
  func location(x: CGFloat, y: CGFloat) {
    
  }

}
