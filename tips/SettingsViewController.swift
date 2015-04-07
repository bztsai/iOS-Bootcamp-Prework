//
//  SettingsViewController.swift
//  tips
//
//  Created by Benjamin Tsai on 4/6/15.
//  Copyright (c) 2015 Benjamin Tsai. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipSegment: UISegmentedControl!
    
    let model = TipModel.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipSegment.selectedSegmentIndex = model.defaultTipPercentIndex
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        model.defaultTipPercentIndex = tipSegment.selectedSegmentIndex
        model.tipPercentIndex = tipSegment.selectedSegmentIndex
        model.save()
    }
    
    @IBAction func onDone(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion:nil)
    }
}