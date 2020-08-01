//
//  RoundedImageView.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/24/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.roundedImage()
    }
}
