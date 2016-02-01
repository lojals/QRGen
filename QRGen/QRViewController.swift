//
//  ViewController.swift
//  QRGen
//
//  Created by Jorge Raul Ovalle Zuleta on 1/30/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit
import QRCode
import SAConfettiView

class QRViewController: UIViewController {

    var image:UIImageView!
    var image2:UIImageView!
    var qrCode:QRCode!
    var confettiView:SAConfettiView!
    var tapForColor:UILabel!
    var titleTxt:UILabel!
    var shareBtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgImageView         = UIImageView(frame: self.view.bounds)
        bgImageView.image       = UIImage(named: "background.jpg")!
        bgImageView.contentMode = .Left
        self.view.addSubview(bgImageView)
        
        
        let blur = UIBlurEffect(style: .Dark)
        let vi = UIVisualEffectView(effect: blur)
        vi.frame = self.view.bounds

        self.view.addSubview(vi)
        
        let url     = NSURL(string: "http://google.com")
        qrCode      = QRCode(url!)
        qrCode.size = CGSize(width: 320, height: 320)
        qrCode.color = CIColor(color: UIColor.clearColor())
        
        image = UIImageView(image: qrCode?.image)
        image.translatesAutoresizingMaskIntoConstraints = false

        
        image2 = UIImageView(frame: CGRectMake(0, 0, 320, 320))
        image2.translatesAutoresizingMaskIntoConstraints = false
        image2.layerGradient()
        image2.layer.masksToBounds = true
        image2.alpha = 1
        self.view.addSubview(image2)
        self.view.addSubview(image)
        
        confettiView = SAConfettiView(frame: self.view.bounds)
        self.view.addSubview(confettiView)
        confettiView.startConfetti()
        
         NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: "stopConfetti", userInfo: nil, repeats: false)
        
        
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
        
        tapForColor = UILabel()
        tapForColor.textColor = UIColor.whiteColor()
        tapForColor.textAlignment = .Center
        tapForColor.text = "Tap on the QRCode to change the colors."
        tapForColor.numberOfLines = 0
        tapForColor.sizeToFit()
        tapForColor.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tapForColor)
        
        
        titleTxt = UILabel()
        titleTxt.textColor = UIColor.whiteColor()
        titleTxt.textAlignment = .Center
        titleTxt.text = "🎉 Excellent 🎉"
        titleTxt.numberOfLines = 0
        titleTxt.font = UIFont.systemFontOfSize(30)
        titleTxt.sizeToFit()
        titleTxt.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(titleTxt)

        shareBtn = UIButton(type: .System)
        shareBtn.setTitle("Share", forState: .Normal)
        shareBtn.tintColor = UIColor.whiteColor()
        shareBtn.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(shareBtn)
        
        createConstraints()
    }
    
    func stopConfetti(){
        confettiView.stopConfetti()
    }
    
    func createConstraints(){
        self.view.addConstraint(NSLayoutConstraint(item: self.image, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .Width, relatedBy: .Equal, toItem: self.image, attribute: .Width, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .Height, relatedBy: .Equal, toItem: self.image, attribute: .Height, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.tapForColor, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: tapForColor, attribute: .Top, relatedBy: .Equal, toItem: self.image2, attribute: .Bottom, multiplier: 1, constant: 10))
        tapForColor.addConstraint(NSLayoutConstraint(item: tapForColor, attribute: .Width, relatedBy: .LessThanOrEqual, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        self.view.addConstraint(NSLayoutConstraint(item: self.titleTxt, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: titleTxt, attribute: .Bottom, relatedBy: .Equal, toItem: self.image2, attribute: .Top, multiplier: 1, constant: -20))
        self.view.addConstraint(NSLayoutConstraint(item: self.shareBtn, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.shareBtn, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1, constant: -50))
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

