//
//  MenuViewController.swift
//  QRGen
//
//  Created by Jorge Raul Ovalle Zuleta on 1/31/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit
import AVFoundation
import QRCodeReader.Swift

class MenuViewController: GenericViewController,QRCodeReaderViewControllerDelegate {
    var container:UIView!
    lazy var reader = QRCodeReaderViewController(metadataObjectTypes: [AVMetadataObjectTypeQRCode])
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        btnCreate.addTarget(self, action: Selector("createQRCode"), forControlEvents: .TouchUpInside)
        container.addSubview(btnCreate)
        
        let line = UIImageView(image: UIImage(named: "Line"))
        line.tag = 3
        line.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(line)
        
        let btnRead = UIButton()
        btnRead.tag = 4
        btnRead.translatesAutoresizingMaskIntoConstraints = false
        btnRead.setImage(UIImage(named: "Btn_read"), forState: .Normal)
        btnRead.addTarget(self, action: Selector("readQRCode"), forControlEvents: .TouchUpInside)
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
        self.container.addConstraint(NSLayoutConstraint(item: self.container, attribute: .Width,   relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 226))
        self.container.addConstraint(NSLayoutConstraint(item: self.container, attribute: .Height,  relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 380))
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
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    func createQRCode(){
        let view2 = QRViewController()
        self.navigationController?.pushViewController(view2, animated: false)
    }
    
    func readQRCode(){
        reader.delegate = self
        reader.modalPresentationStyle = .FormSheet
        presentViewController(reader, animated: true, completion: nil)
    }
    
    func reader(reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult){
        print(result.value.containsString("http"))
        print(result.value)
        
        if let url = NSURL(string: result.value) {
            reader.dismissViewControllerAnimated(true, completion: nil)
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    func readerDidCancel(reader: QRCodeReaderViewController) {
        reader.dismissViewControllerAnimated(true, completion: nil)
    }
}
