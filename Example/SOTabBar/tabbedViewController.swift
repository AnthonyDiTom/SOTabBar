
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func removeTab(_ sender: Any) {
        didTapRemoveTab?(2)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
