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
        
        let titles = ["Accueil","Sinistres","Factures","Conversatons"]
        let titlesTranslated = ["Home","Claims","Bills","Messages","toMuchContent"]
        

        let viewControllerA = tabbedViewController(vcId: "CHAT_ID", tabTitle: titles[1], imageID: "Claims", selectedImageId: "Claims_Filled")
        
        let viewControllerB = tabbedViewController(vcId: "SLEEP_ID", tabTitle: titles[2], imageID: "Invoices", selectedImageId: "Invoices_Filled")
        
        let viewControllerC = tabbedViewController(vcId: "MUSIC_ID", tabTitle: titles[3], imageID: "Messages", selectedImageId: "Messages_Filled")
        
        let homeViewController = tabbedViewController(vcId: "HOME_ID", tabTitle: titles[0], imageID: "Home", selectedImageId: "Home_Filled") as! homeViewController
        
        homeViewController.didTapRemoveTab = { [weak self]  in
            
        }
        
        homeViewController.didTapRemoveCurrentTab = { [weak self]  in
            
        }
        
        homeViewController.didTapTranslate = { [weak self]  in
            self?.updateTitles(titlesTranslated)
        }
        
        
        viewControllers = [homeViewController, viewControllerA,viewControllerB,viewControllerC]
    }
    
    func tabbedViewController(vcId:String, tabTitle:String, imageID:String, selectedImageId:String) -> UIViewController {
        
        let vc = self.storyboard!.instantiateViewController(withIdentifier: vcId)
        vc.tabBarItem = UITabBarItem(title: tabTitle, image: UIImage(named: imageID), selectedImage: UIImage(named: selectedImageId))
        
        return vc
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
        SOTabBarSetting.selectedImageSize = 25
        SOTabBarSetting.shadowHeight = 3
        SOTabBarSetting.shadowRadius = 5
        SOTabBarSetting.shadowOpacity = 0.3
    }
    
}

extension ViewController: SOTabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: SOTabBarController, didSelect viewController: UIViewController) {
        print(viewController.tabBarItem.title ?? "")
    }
    
    func tabBarController(_ tabBarController: SOTabBarController, didTapSelectedTab viewController: UIViewController) {
        
        print("Tap to selected tab \(viewController.tabBarItem.title ?? "nil")")

    }
}
