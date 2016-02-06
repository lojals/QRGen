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

class QRViewController: GenericViewController {

    var image:UIImageView!
    var image2:UIImageView!
    var btnChangeColors:UIButton!
    var qrCode:QRCode!
    var confettiView:SAConfettiView!
    var tapForColor:UIImageView!
    var titleTxt:UILabel!
    var shareBtn:UIButton!
    var backBtn:UIButton!
    
    var paletteCounter:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paletteCounter = 0

        let url        = NSURL(string: "http://www.fubiz.net/2016/01/07/the-minimalist-color-palettes-of-2015/colorpalette2015-00/")
        qrCode         = QRCode(url!)
        qrCode.size    = CGSize(width: 1000, height: 1000)
        qrCode.color   = CIColor(color: UIColor.clearColor())
        
        image = UIImageView(image: qrCode?.image)
        
        
        image.translatesAutoresizingMaskIntoConstraints = false

        image2 = UIImageView(frame: CGRectMake(0, 0, 320, 320))
        image2.translatesAutoresizingMaskIntoConstraints = false
        image2.layerGradient(paletteCounter)
        image2.layer.masksToBounds = true
        image2.alpha = 1
        self.view.addSubview(image2)
        self.view.addSubview(image)

        
        btnChangeColors = UIButton()
        btnChangeColors.translatesAutoresizingMaskIntoConstraints = false
        btnChangeColors.addTarget(self, action: Selector("changeColors"), forControlEvents: .TouchUpInside)
        self.view.addSubview(btnChangeColors)
        
        
        confettiView = SAConfettiView(frame: self.view.bounds)
        confettiView.userInteractionEnabled = false
        self.view.addSubview(confettiView)
        confettiView.startConfetti()

         NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: "stopConfetti", userInfo: nil, repeats: false)
        
        tapForColor = UIImageView(image: UIImage(named: "Indication"))
        tapForColor.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tapForColor)
        
        titleTxt = UILabel()
        titleTxt.textColor = UIColor.whiteColor()
        titleTxt.textAlignment = .Center
        titleTxt.text = "🎉🤖🎆🤖🎉"
        titleTxt.numberOfLines = 0
        titleTxt.font = UIFont.systemFontOfSize(30)
        titleTxt.sizeToFit()
        titleTxt.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(titleTxt)

        shareBtn = UIButton(type: .System)
        shareBtn.setImage(UIImage(named: "Btn_share"), forState: .Normal)
        shareBtn.tintColor = UIColor.whiteColor()
        shareBtn.translatesAutoresizingMaskIntoConstraints = false
        shareBtn.addTarget(self, action: Selector("shareIt"), forControlEvents: .TouchUpInside)
        self.view.addSubview(shareBtn)
        
        backBtn = UIButton(type: .System)
        backBtn.setImage(UIImage(named: "Btn_back"), forState: .Normal)
        backBtn.tintColor = UIColor.whiteColor()
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        backBtn.addTarget(self, action: Selector("goBack"), forControlEvents: .TouchUpInside)
        self.view.addSubview(backBtn)
        
        createConstraints()
    }
    
    func stopConfetti(){
        confettiView.stopConfetti()
    }
    
    func createConstraints(){
        self.view.addConstraint(NSLayoutConstraint(item: self.image, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: -60))
        image.addConstraint(NSLayoutConstraint(item: image, attribute: .Width, relatedBy: .LessThanOrEqual, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        image.addConstraint(NSLayoutConstraint(item: image, attribute: .Height, relatedBy: .LessThanOrEqual, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 300))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .CenterX, relatedBy: .Equal, toItem: self.image, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .CenterY, relatedBy: .Equal, toItem: self.image, attribute: .CenterY, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .Width, relatedBy: .Equal, toItem: self.image, attribute: .Width, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.image2, attribute: .Height, relatedBy: .Equal, toItem: self.image, attribute: .Height, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.btnChangeColors, attribute: .CenterX, relatedBy: .Equal, toItem: self.image2, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.btnChangeColors, attribute: .CenterY, relatedBy: .Equal, toItem: self.image2, attribute: .CenterY, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.btnChangeColors, attribute: .Width, relatedBy: .Equal, toItem: self.image2, attribute: .Width, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.btnChangeColors, attribute: .Height, relatedBy: .Equal, toItem: self.image2, attribute: .Height, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.tapForColor, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: tapForColor, attribute: .Top, relatedBy: .Equal, toItem: self.image2, attribute: .Bottom, multiplier: 1, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: self.titleTxt, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: titleTxt, attribute: .Bottom, relatedBy: .Equal, toItem: self.image2, attribute: .Top, multiplier: 1, constant: -20))
        self.view.addConstraint(NSLayoutConstraint(item: self.shareBtn, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.shareBtn, attribute: .Top, relatedBy: .Equal, toItem: self.tapForColor, attribute: .Bottom, multiplier: 1, constant: 20))
        self.view.addConstraint(NSLayoutConstraint(item: self.backBtn, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: self.backBtn, attribute: .Top, relatedBy: .Equal, toItem: self.shareBtn, attribute: .Bottom, multiplier: 1, constant: 10))
    }
    
    func goBack(){
        self.navigationController?.popToRootViewControllerAnimated(false)
    }
    
    func changeColors(){
        if paletteCounter < 12 {
            paletteCounter = paletteCounter + 1
        }else{
            paletteCounter = 0
        }
        image2.layerGradient(paletteCounter)
    }
    
    func shareIt(){
        let si = self.image.frame.size
        UIGraphicsBeginImageContext(si)
        image2.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        self.image.image?.drawInRect(CGRectMake(0, 0, si.width, si.height))
        let imageX = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        
        let activities = UIActivity()
        let activity = UIActivityViewController(activityItems: ["QRCode generated with QRGen App",imageX], applicationActivities: [activities])
        activity.excludedActivityTypes = [UIActivityTypeAirDrop]
        self.presentViewController(activity, animated: true) { () -> Void in
        }
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

