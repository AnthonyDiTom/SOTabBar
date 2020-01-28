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
        
        let texts = ["Accueil","Sinistres","Factures","Courtier","Compte"] //["Home", "Schade", "Facturen", "Makelaar", "Mijn account"]
        
        let homeStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HOME_ID")
        let chatStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CHAT_ID")
        let sleepStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SLEEP_ID")
        let musicStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MUSIC_ID")
        let meStoryboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ME_ID")
        
        homeStoryboard.tabBarItem = UITabBarItem(title: texts[0], image: UIImage(named: "home"), selectedImage: UIImage(named: "home_Selected"))
        chatStoryboard.tabBarItem = UITabBarItem(title: texts[1], image: UIImage(named: "chat"), selectedImage: UIImage(named: "chat_Selected"))
        sleepStoryboard.tabBarItem = UITabBarItem(title: texts[2], image: UIImage(named: "moon"), selectedImage: UIImage(named: "moon_Selected"))
        musicStoryboard.tabBarItem = UITabBarItem(title: texts[3], image: UIImage(named: "music"), selectedImage: UIImage(named: "music_Selected"))
        meStoryboard.tabBarItem = UITabBarItem(title: texts[4], image: UIImage(named: "menu"), selectedImage: UIImage(named: "menu_Selected"))
           
        viewControllers = [homeStoryboard, chatStoryboard,sleepStoryboard,musicStoryboard,meStoryboard]
    }
    
    
    func setupTabBar() {
        let orange = UIColor(red: 0.957, green: 0.502, blue: 0.149, alpha: 1)
        let blue = UIColor(red: 0.275, green: 0.431, blue: 0.769, alpha: 1)
        let lightBlue =  UIColor(red: 0.941, green: 0.961, blue: 1, alpha: 1)
        
        
        SOTabBarSetting.circleSize = CGSize(width: 50, height: 50)
        SOTabBarSetting.selectedIconColor = orange
        
        SOTabBarSetting.textColor = blue
        SOTabBarSetting.textFont = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        SOTabBarSetting.backgroundColor = lightBlue

        SOTabBarSetting.shadowHeight = 3
        SOTabBarSetting.shadowRadius = 5
        SOTabBarSetting.shadowOpacity = 0.3
    }
    
}

extension ViewController: SOTabBarControllerDelegate {
    func tabBarController(_ tabBarController: SOTabBarController, didSelect viewController: UIViewController) {
        print(viewController.tabBarItem.title ?? "")
    }
}
