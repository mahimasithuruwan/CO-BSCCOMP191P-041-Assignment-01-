//
//  RoundedButton2.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/29/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton2 :UIButton {

        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                layer.borderWidth = borderWidth
            }
        }
        //Normal state bg and border
        @IBInspectable var normalBorderColor: UIColor? {
            didSet {
                layer.borderColor = normalBorderColor?.cgColor
            }
        }



        //Highlighted state bg and border
        @IBInspectable var highlightedBorderColor: UIColor?

     override func layoutSubviews() {
            super.layoutSubviews()

            layer.cornerRadius = layer.frame.height / 2
            clipsToBounds = true

           
        }

    }

       
        

    //Extension Required by RoundedButton to create UIImage from UIColor
   
    
