//
//  LogInTextView.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/24/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

class LogInTextView : UITextField{
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            setUpField()
        }
        
        
        required init?(coder aDecoder: NSCoder) {
            super.init( coder: aDecoder )
            setUpField()
        }
        
        
        private func setUpField() {
            tintColor             = .white
            textColor             = .darkGray
            font                  = UIFont(name: Fonts.avenirNextCondensedDemiBold, size: 18)
            backgroundColor       = UIColor(white: 1.0, alpha: 0.5)
            autocorrectionType    = .no
            layer.cornerRadius    = frame.size.height/2
            clipsToBounds         = true
            
            let placeholder       = self.placeholder != nil ? self.placeholder! : ""
            let placeholderFont   = UIFont(name: Fonts.avenirNextCondensedDemiBold, size: 18)!
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes:
                [NSAttributedString.Key.foregroundColor: UIColor.lightGray,
                 NSAttributedString.Key.font: placeholderFont])
            
            let indentView        = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            leftView              = indentView
            leftViewMode          = .always
        }
    }
