//
//  MyIndicator.swift
//  indicator
//
//  Created by iMac on 2/10/19.
//  Copyright © 2019 Indicator. All rights reserved.
//


/**
 
 Appropriate IndicatorView.DEFAULT_* values are used for omitted params.

 - parameter frame:                frame of indicator view.
 - parameter image:                image displayed under indicator view.
 - parameter contentMode:          contentMode of indicator view.
 - parameter autoresizingMask:     autoresizingMask animation type.
 
 */


import UIKit

//Constant Variables
var myIndicatorImg: UIImage?


class MyIndicator: UIView {
    
    //create imagView
    let imageView = UIImageView()
    
    init(frame: CGRect, image: UIImage) {
        super.init(frame: frame)
        imageView.frame = bounds
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(imageView)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    func startAnimating() {
        isHidden = false
        rotate()
    }
    
    func stopAnimating() {
        isHidden = true
        removeRotation()
    }
    
    private func rotate() {
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 2.0
        rotation.isCumulative = true
        rotation.repeatCount = Float.greatestFiniteMagnitude
        self.imageView.layer.add(rotation, forKey: "rotationAnimation")
    }
    
    private func removeRotation() {
        self.imageView.layer.removeAnimation(forKey: "rotationAnimation")
    }
}
