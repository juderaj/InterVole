//
//  SettingsVC.swift
//  InterVole
//
//  Created by Karan Grover on 2016-03-04.
//  Copyright © 2016 Karan Grover. All rights reserved.
//


import Foundation

import UIKit

class SettingsVC: UIViewController {
    
    @IBOutlet weak var ClassOne: UITextField!
    
    @IBOutlet weak var ClassTwo: UITextField!
    
    @IBOutlet weak var ClassThree: UITextField!
    
    @IBOutlet weak var ClassFour: UITextField!
    
    
    @IBAction func SubmitQA(sender: UIButton) {
        
        
       
        _ = ClassOne.text
        
        _ = ClassTwo.text
        
        _ = ClassThree.text
        
        _ = ClassFour.text
        
        
   
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
