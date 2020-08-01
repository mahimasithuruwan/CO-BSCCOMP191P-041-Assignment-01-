//
//  LineTextField2.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/30/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

class LineTextField2: UITextField {

    @IBInspectable var linesWidth: CGFloat = 1.0 {didSet {drawLines() }}
        @IBInspectable var linesColor: UIColor = .white { didSet {drawLines() }}
        
        @IBInspectable var leftLine: Bool = false { didSet {drawLines() }}
        @IBInspectable var rightLine: Bool = false { didSet {drawLines() }}
        @IBInspectable var bottomLine: Bool = false { didSet {drawLines() }}
        @IBInspectable var topLine: Bool = false { didSet {drawLines() }}

    func drawLines() {
        
        if bottomLine {
            add(line: CGRect(x: 0.0, y: frame.size.height - linesWidth, width: frame.size.width, height: linesWidth))
        }
        if topLine {
            add(line: CGRect(x: 0.0, y: 0.0, width: frame.size.width, height: linesWidth))
        }
        if rightLine {
            add(line: CGRect(x: frame.size.height - linesWidth, y: 0.0, width: linesWidth, height: frame.size.height))
        }
        if leftLine {
            add(line: CGRect(x: 0.0, y: 0.0, width: linesWidth, height: frame.size.height))
        
        }
    }

      typealias Line = CGRect
        private func add(line: Line) {
            let boarder = CALayer()
            boarder.frame = line
            boarder.backgroundColor = linesColor.cgColor
            layer.addSublayer(boarder)
    }
        override func layoutSubviews() {
            super.layoutSubviews()
            drawLines()
    }
    

}
