//
//  ASExtentions.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/24/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}
