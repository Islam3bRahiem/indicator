//
//  UIViewControllerExtension.swift
//  indicator
//
//  Created by iMac on 2/10/19.
//  Copyright © 2019 Indicator. All rights reserved.
//

import UIKit


//MARK:- UIImage Extension
extension UIImage {
    class var indicatorImg: UIImage {
        return UIImage(named: "loading-2")!
    }

    func withColor(_ color: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        guard let ctx = UIGraphicsGetCurrentContext(), let cgImage = cgImage else { return self }
        color.setFill()
        ctx.translateBy(x: 0, y: size.height)
        ctx.scaleBy(x: 1.0, y: -1.0)
        ctx.clip(to: CGRect(x: 0, y: 0, width: size.width, height: size.height), mask: cgImage)
        ctx.fill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
        guard let colored = UIGraphicsGetImageFromCurrentImageContext() else { return self }
        UIGraphicsEndImageContext()
        return colored
    }
    
}


//MARK:- UIColor Extension
extension UIColor {
    class var indicatorColor: UIColor {
        return self.hexStringToUIColor(hex:  "#035E9E")
    }

    static func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
