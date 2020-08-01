//
//  PasswordViewController.swift
//  CO-BSCCOMP191P-041 (Assignment 01)
//
//  Created by Mahima Sithuruwan on 7/30/20.
//  Copyright © 2020 Mahima Sithuruwan. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

    var click : Bool!
    @IBOutlet weak var btnshow : UIButton!
    @IBOutlet weak var txtpassward : LineTextField2!
    
    override func viewDidLoad() {
        super.viewDidLoad()
click = true
    }
  
    @IBAction func show(_ sender: UIButton) {
        _ = txtpassward.text;
                    
                    if(click == true){
                        txtpassward.isSecureTextEntry = false
                        click = false
                    }
                    else{
                        txtpassward.isSecureTextEntry = true
                        click = true
                        
                    }  
    }
}
