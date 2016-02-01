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
        logo.tag = 1
        logo.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(logo)
        
        
        let btnCreate = UIButton()
        btnCreate.tag = 2
        btnCreate.translatesAutoresizingMaskIntoConstraints = false
        btnCreate.setImage(UIImage(named: "Btn_create"), forState: .Normal)
        container.addSubview(btnCreate)
        
        let line = UIImageView(image: UIImage(named: "Line"))
        line.tag = 3
        line.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(line)
        
        let btnRead = UIButton()
        btnRead.tag = 4
        btnRead.translatesAutoresizingMaskIntoConstraints = false
        btnRead.setImage(UIImage(named: "Btn_read"), forState: .Normal)
        container.addSubview(btnRead)
        
        
        let cc = UIImageView(image: UIImage(named: "cc"))
        cc.tag = 5
        cc.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(cc)
        
        self.addConstraints()
    }
    
    func addConstraints(){
        self.view.addConstraint(NSLayoutConstraint(item: self.container, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.container, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0))
        container.addConstraint(NSLayoutConstraint(item: self.container, attribute: .Width,   relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 226))
        container.addConstraint(NSLayoutConstraint(item: self.container, attribute: .Height,  relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 380))
        
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(1)!, attribute: .CenterX, relatedBy: .Equal, toItem: self.container, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(1)!, attribute: .Top, relatedBy: .Equal, toItem: self.container, attribute: .Top, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(2)!, attribute: .CenterX, relatedBy: .Equal, toItem: self.container, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(2)!, attribute: .Top, relatedBy: .Equal, toItem: self.container.viewWithTag(1), attribute: .Bottom, multiplier: 1, constant: 73))
        
        
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(3)!, attribute: .CenterX, relatedBy: .Equal, toItem: self.container, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(3)!, attribute: .Top, relatedBy: .Equal, toItem: self.container.viewWithTag(2), attribute: .Bottom, multiplier: 1, constant: 32))
        
        
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(4)!, attribute: .CenterX, relatedBy: .Equal, toItem: self.container, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.container.viewWithTag(4)!, attribute: .Top, relatedBy: .Equal, toItem: self.container.viewWithTag(3), attribute: .Bottom, multiplier: 1, constant: 32))
        
        
        self.view.addConstraint(NSLayoutConstraint(item: self.view.viewWithTag(5)!, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.view.viewWithTag(5)!, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1, constant: -13))
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
