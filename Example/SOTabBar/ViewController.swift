//
//  ViewController.swift
//  SOTabBar
//
//  Created by Ahmadalsofi on 01/03/2020.
//  Copyright (c) 2020 Ahmadalsofi. All rights reserved.
//


import UIKit
import SOTabBar
class ViewController: SOTabBarController {

    override func loadView() {
        super.loadView()
        setupTabBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        let texts = ["Accueil","Sinistres","Factures","Conversatons"] 
        
        let homeStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HOME_ID") as! tabbedViewController
        homeStoryboard.didTapRemoveTab = { [weak self] index  in
            //self?.removeTab(at:index)
        }
        let chatStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CHAT_ID")
        let sleepStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SLEEP_ID")
        let musicStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MUSIC_ID")
        
        homeStoryboard.tabBarItem = UITabBarItem(title: texts[0], image: UIImage(named: "Home"), selectedImage: UIImage(named: "Home_Filled"))
        chatStoryboard.tabBarItem = UITabBarItem(title: texts[1], image: UIImage(named: "Claims"), selectedImage: UIImage(named: "Claims_Filled"))
        sleepStoryboard.tabBarItem = UITabBarItem(title: texts[2], image: UIImage(named: "Invoices"), selectedImage: UIImage(named: "Invoices_Filled"))
        musicStoryboard.tabBarItem = UITabBarItem(title: texts[3], image: UIImage(named: "Messages"), selectedImage: UIImage(named: "Messages - Filled"))
           
        viewControllers = [homeStoryboard, chatStoryboard,sleepStoryboard,musicStoryboard]
    }
    
    
    func setupTabBar() {
        let orange = UIColor(red: 0.957, green: 0.502, blue: 0.149, alpha: 1)
        let blue = UIColor(red: 0.275, green: 0.431, blue: 0.769, alpha: 1)
        let lightBlue =  UIColor(red: 0.941, green: 0.961, blue: 1, alpha: 1)
        
        
        SOTabBarSetting.circleSize = CGSize(width: 50, height: 50)
        SOTabBarSetting.selectedColor = orange
        
        SOTabBarSetting.textColor = blue
        SOTabBarSetting.textFont = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        SOTabBarSetting.backgroundColor = lightBlue
        SOTabBarSetting.animationDurationTime = 0.2
        SOTabBarSetting.imageSize = 30
        SOTabBarSetting.shadowHeight = 3
        SOTabBarSetting.shadowRadius = 5
        SOTabBarSetting.shadowOpacity = 0.3
    }
    
}

extension ViewController: SOTabBarControllerDelegate {
    func tabBarController(_ tabBarController: SOTabBarController, didSelect viewController: UIViewController) {
        print(viewController.tabBarItem.title ?? "")
        
        //tabBarController.removeTab(at:3)
    }
}
