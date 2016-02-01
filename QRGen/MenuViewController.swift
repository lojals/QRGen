//
//  MenuViewController.swift
//  QRGen
//
//  Created by Jorge Raul Ovalle Zuleta on 1/31/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var container:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgImageView         = UIImageView(frame: CGRectMake(-120, -120, self.view.frame.width + 240, self.view.frame.height + 240))
        bgImageView.image       = UIImage(named: "background.jpg")!
        bgImageView.contentMode = .Left
        self.view.addSubview(bgImageView)
        
        let leftRightMin = CGFloat(-120.0)
        let leftRightMax = CGFloat(120.0)
        let upDownMin = CGFloat(-65.0)
        let upDownMax = CGFloat(65.0)
        
        let leftRight = UIInterpolatingMotionEffect(keyPath: "center.x", type:
            UIInterpolatingMotionEffectType.TiltAlongHorizontalAxis)
        leftRight.minimumRelativeValue = leftRightMin
        leftRight.maximumRelativeValue = leftRightMax
        
        let upDown = UIInterpolatingMotionEffect(keyPath: "center.y", type:
            UIInterpolatingMotionEffectType.TiltAlongVerticalAxis)
        upDown.minimumRelativeValue = upDownMin
        upDown.maximumRelativeValue = upDownMax
        
        let fxGroup = UIMotionEffectGroup()
        fxGroup.motionEffects = [leftRight, upDown]
        bgImageView.addMotionEffect(fxGroup)
        
        
        container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(container)
        
        let logo = UIImageView(image: UIImage(named: "intro"))
        self.view.addSubview(logo)
        
        self.addConstraints()
    }
    
    func addConstraints(){
        self.view.addConstraint(NSLayoutConstraint(item: self, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0))
        container.addConstraint(NSLayoutConstraint(item: self, attribute: .Width,   relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 226))
        container.addConstraint(NSLayoutConstraint(item: self, attribute: .Height,  relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 380))
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
