
//
//  tabbedViewController.swift
//  SOTabBar_Example
//
//  Created by Anthony Di Tomasso on 29/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    var didTapRemoveTab: (()-> Void)?
    var didTapRemoveCurrentTab: (()-> Void)?
    var didTapTranslate: (()-> Void)?
    var didTapAddTab: (()-> Void)?
    

    @IBAction func removeTab(_ sender: Any) {
        didTapRemoveTab?()
    }

    @IBAction func removeCurrentTab(_ sender: Any) {
        didTapRemoveCurrentTab?()
    }
    
    @IBAction func translate(_ sender: Any) {
        didTapTranslate?()
    }
    
    @IBAction func addTab(_ sender: Any) {
        didTapAddTab?()
    }
}
