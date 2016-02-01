//
//  Colors.swift
//  QRGen
//
//  Created by Jorge Raul Ovalle Zuleta on 1/30/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

extension UIView {
    func layerGradient() {
        let layer : CAGradientLayer = CAGradientLayer()
        layer.frame.size = self.frame.size
        layer.frame.origin = CGPointMake(0.0,0.0)
        
        let color0 = UIColor(red:0.6, green:0.73, blue:0.59, alpha:1).CGColor
        let color1 = UIColor(red:1, green:0.81, blue:0.65, alpha:1).CGColor
        let color2 = UIColor(red:0.96, green:0.51, blue:0.48, alpha:1).CGColor
        let color3 = UIColor(red:0.93, green:0.28, blue:0.36, alpha:1).CGColor
        let color4 = UIColor(red:0.16, green:0.21, blue:0.23, alpha:1).CGColor
        
        layer.colors = [color0,color1,color2,color3,color4]
        layer.locations = [0.2,0.3,0.40,0.5,0.65]
        self.layer.insertSublayer(layer, atIndex: 0)
    }
}