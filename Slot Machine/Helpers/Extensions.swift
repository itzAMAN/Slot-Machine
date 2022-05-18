//
//  Extensions.swift
//  Slot Machine
//
//  Created by AMAN SHARMA on 18/05/22.
//

import SwiftUI

extension Text {
  func scoreLabelStye() -> Text {
    self
      .foregroundColor(Color.white)
      .font(.system(size: 10, weight: .bold, design: .rounded))
  }
  
  func scoreNumberStyle() -> Text {
    self
      .foregroundColor(Color.white)
      .font(.system(.title, design: .rounded))
      .fontWeight(.heavy)
  }
}
