//
//  SOTabBarSetting.swift
//  Pods-SOTabBar_Example
//
//  Created by Asaf Baibekov on 11/01/2020.
//

import Foundation

// Here you can customize the tab bar to meet your neededs
public struct SOTabBarSetting {
    
    public static var selectedIconColor: UIColor = UIColor(red: 250/255, green: 51/255, blue: 24/255, alpha: 1)
    public static var backgroundColor: UIColor = UIColor.white
    public static var circleSize = CGSize(width: 65, height: 65)
    public static var imageSize: CGFloat = 25
    
    public static var textColor: UIColor = .blue
    public static var textFont:UIFont = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    
    public static var shadowColor = UIColor.lightGray.cgColor
    public static var shadowOpacity: Float = 0.2
    public static var shadowRadius: CGFloat = 7
    public static var shadowHeight: CGFloat = 4
    
    public static var selectedImage: CGFloat = 20
    public static var animationDurationTime: Double = 0.4
    
}
