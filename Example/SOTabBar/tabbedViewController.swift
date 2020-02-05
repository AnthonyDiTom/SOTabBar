
//
//  tabbedViewController.swift
//  SOTabBar_Example
//
//  Created by Anthony Di Tomasso on 29/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class tabbedViewController: UIViewController {

    var didTapRemoveTab: ((_ index: Int)-> Void)?
    var didTapTranslate: (()-> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func removeTab(_ sender: Any) {
        didTapRemoveTab?(2)
    }

    @IBAction func translate(_ sender: Any) {
        didTapTranslate?()
    }
    
}
