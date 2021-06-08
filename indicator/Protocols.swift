//
//  Protocols.swift
//  indicator
//
//  Created by Islamic on 2/10/19.
//  Copyright © 2019 2grand. All rights reserved.
//

import UIKit



//MARK:- Protocols
public protocol IndicatorView { }
public protocol IndicatorBlockUI { }


//MARK:- IndicatorViewable with UIViewController Extension
public extension IndicatorView where Self: UIViewController {
    
    //start indicator animation
    func startIndicator() {
        
        //set Indicator
        let ind = MyIndicator(frame: CGRect(x: UIScreen.main.bounds.width/2-40, y: UIScreen.main.bounds.height/2-80, width: 80, height: 80), image: myIndicatorImg!)
        ind.tag = 999
        self.view.addSubview(ind)
        ind.startAnimating()
    }
    
    
    //stop indicator animation
    func stopIndicator() {
        if let view = self.view.viewWithTag(999) {
            view.removeFromSuperview()
        }
    }
    
}

//MARK:- IndicatorBlockUI with UIViewController Extension
public extension IndicatorBlockUI where Self: UIViewController {
    
    //start indicator animation
    func startIndicator() {
        
        //set Indicator
        let ind = MyIndicator(frame: CGRect(x: UIScreen.main.bounds.width/2-40, y: UIScreen.main.bounds.height/2-80, width: 80, height: 80), image: myIndicatorImg!)
        ind.tag = 999
        self.view.addSubview(ind)
        ind.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    
    //stop indicator animation
    func stopIndicator() {
        if let view = self.view.viewWithTag(999) {
            view.removeFromSuperview()
            UIApplication.shared.endIgnoringInteractionEvents()
        }
    }
    
}

