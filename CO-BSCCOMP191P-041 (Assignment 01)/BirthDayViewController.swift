//
//  BirthDayViewController.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/30/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

class BirthDayViewController: UIViewController {

    @IBOutlet weak var dateField: UITextField!
        
        let datePicker = UIDatePicker()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
         createDatePicker()
        }
        func createDatePicker() {
            
            dateField.textAlignment = .center
            //toolbar
            let toolbar = UIToolbar()
            toolbar.sizeToFit()
            
            // bar button
            let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
            toolbar.setItems([doneBtn], animated: true)
            
            // assign toolbar
            
            dateField.inputAccessoryView = toolbar
            dateField.inputView = datePicker
            
            datePicker.datePickerMode = .date
        }
        @objc func donePressed() {
            
            // formatter
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
        
            dateField.text = formatter.string(from: datePicker.date)
            self.view.endEditing(true)
        }
    }
