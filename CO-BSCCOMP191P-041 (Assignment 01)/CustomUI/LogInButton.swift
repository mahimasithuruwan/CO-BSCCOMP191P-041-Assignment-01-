//
//  LogInButton.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/24/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

class LogInButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
         setUpButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
         setUpButton()
    }
    private func setUpButton(){
       // backgroundColor = Colors.tropicBlue
      //  titleLabel?.font = UIFont(name: Fonts.avenirNextCondensedDemiBold, size: 22)
        layer.cornerRadius = frame.size.height/2
     //   setTitleColor(.white, for: .normal)
        
            titleLabel?.font = UIFont(name: Fonts.avenirNextCondensedDemiBold, size: 24)
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2.0
        layer.cornerRadius = frame.size.height/2
        setTitleColor(.white, for: .normal)    }
}
