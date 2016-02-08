//
//  TextViewController.swift
//  QRGen
//
//  Created by Jorge Raul Ovalle Zuleta on 2/7/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

class TextViewController: GenericViewController {

    var text:UITextView!
    var btnCopy:UIButton!
    var btnBack:UIButton!
    var txt:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUIComponents()
        createConstraints()
    }
    
    func createUIComponents(){
        text                                           = UITextView()
        text.text                                      = txt
        text.backgroundColor                           = UIColor.clearColor()
        text.textColor                                 = UIColor.whiteColor()
        text.font                                      = UIFont(name: "HelveticaNeue-Light", size: 20)
        text.editable                                  = false
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment                             = .Center
        text.showsHorizontalScrollIndicator            = false
        self.view.addSubview(text)
        
        btnCopy = UIButton()
        btnCopy.setImage(UIImage(named: "Btn_copy"), forState: .Normal)
        btnCopy.translatesAutoresizingMaskIntoConstraints = false
        btnCopy.addTarget(self, action: Selector("copyText"), forControlEvents: .TouchUpInside)
        self.view.addSubview(btnCopy)
        
        btnBack = UIButton()
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        btnBack.setImage(UIImage(named: "Btn_back"), forState: .Normal)
        btnBack.addTarget(self, action: Selector("goBack"), forControlEvents: .TouchUpInside)
        self.view.addSubview(btnBack)
    }
    
    func createConstraints(){
        self.view.addConstraint(NSLayoutConstraint(item: text, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Top, multiplier: 1, constant: 50))
        self.view.addConstraint(NSLayoutConstraint(item: text, attribute: .Width, relatedBy: .Equal, toItem: self.view, attribute: .Width, multiplier: 0.9, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: text, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: btnBack, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1, constant: -20))
        self.view.addConstraint(NSLayoutConstraint(item: btnBack, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: btnCopy, attribute: .Bottom, relatedBy: .Equal, toItem: btnBack, attribute: .Top, multiplier: 1, constant: -20))
        self.view.addConstraint(NSLayoutConstraint(item: btnCopy, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: text, attribute: .Bottom, relatedBy: .Equal, toItem: btnCopy, attribute: .Top, multiplier: 1, constant: -50))
    }
    
    func copyText(){
        UIPasteboard.generalPasteboard().string = txt
        let actionSheet = UIAlertController(title: "Copied!", message: "The Text was copied to the clipboard", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let option = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: {(actionSheet: UIAlertAction!) in ()})
        actionSheet.addAction(option)
        self.presentViewController(actionSheet, animated: true, completion: nil)
    }
    
    func goBack(){
        self.navigationController?.popToRootViewControllerAnimated(false)
    }
}
