//
//  LogInButton2.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/27/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

class LogInButton2: UIButton {

   override init(frame: CGRect) {
               super.init(frame: frame)
           
              setupButton()
           }
           
           required init?(coder: NSCoder) {
               super.init(coder: coder)
               setupButton()
           }
           private func setupButton() {
              // backgroundColor = #colorLiteral(red: 0.06908603932, green: 0.1985503986, blue: 0.2692478951, alpha: 1)
             //  titleLabel?.font = UIFont(name: Fonts.avenirNextCondensedDemiBold, size: 22)
               layer.borderColor = UIColor.white.cgColor
               layer.borderWidth = 2.0
               layer.cornerRadius = frame.size.height/2
              // setTitleColor(.white, for: .normal)
           }
}
