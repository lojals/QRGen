//
//  GenericViewController.swift
//  QRGen
//
//  Created by Jorge Raul Ovalle Zuleta on 2/4/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

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
        
        let triangle = UIImageView(image: UIImage(named: "triangle"))
        triangle.frame.origin.y = 0
        triangle.center.x = self.view.center.x
        self.view.addSubview(triangle)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
