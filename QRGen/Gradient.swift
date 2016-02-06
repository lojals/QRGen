//
//  Colors.swift
//  QRGen
//
//  Created by Jorge Raul Ovalle Zuleta on 1/30/16.
//  Copyright © 2016 jorgeovalle. All rights reserved.
//

import UIKit

extension UIView {
    func layerGradient(palette:Int) {
        
        self.layer.sublayers?.removeAll()
        let layer : CAGradientLayer = CAGradientLayer()
        layer.frame.size = self.frame.size
        layer.frame.origin = CGPointMake(0.0,0.0)
        
        switch palette{
        case 0:
            let color0 = UIColor(red:0.6, green:0.73, blue:0.59, alpha:1).CGColor
            let color1 = UIColor(red:1, green:0.81, blue:0.65, alpha:1).CGColor
            let color2 = UIColor(red:0.96, green:0.51, blue:0.48, alpha:1).CGColor
            let color3 = UIColor(red:0.93, green:0.28, blue:0.36, alpha:1).CGColor
            let color4 = UIColor(red:0.16, green:0.21, blue:0.23, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 1:
            let color0 = UIColor(red:0.66, green:0.66, blue:0.66, alpha:1).CGColor
            let color1 = UIColor(red:0.81, green:0.32, blue:0.48, alpha:1).CGColor
            let color2 = UIColor(red:0.91, green:0.09, blue:0.37, alpha:1).CGColor
            let color3 = UIColor(red:0.28, green:0.28, blue:0.28, alpha:1).CGColor
            let color4 = UIColor(red:0.21, green:0.21, blue:0.21, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 2:
            let color0 = UIColor(red:0.66, green:0.13, blue:0.42, alpha:1).CGColor
            let color1 = UIColor(red:0.93, green:0.11, blue:0.29, alpha:1).CGColor
            let color2 = UIColor(red:0.95, green:0.42, blue:0.27, alpha:1).CGColor
            let color3 = UIColor(red:0.97, green:0.86, blue:0.41, alpha:1).CGColor
            let color4 = UIColor(red:0.18, green:0.58, blue:0.6, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 3:
            let color0 = UIColor(red:0.94, green:0.27, blue:0.4, alpha:1).CGColor
            let color1 = UIColor(red:0.96, green:0.61, blue:0.6, alpha:1).CGColor
            let color2 = UIColor(red:0.98, green:0.81, blue:0.68, alpha:1).CGColor
            let color3 = UIColor(red:0.78, green:0.78, blue:0.66, alpha:1).CGColor
            let color4 = UIColor(red:0.52, green:0.69, blue:0.61, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 4:
            let color0 = UIColor(red:0.9, green:0.94, blue:0.76, alpha:1).CGColor
            let color1 = UIColor(red:0.64, green:0.84, blue:0.67, alpha:1).CGColor
            let color2 = UIColor(red:0.22, green:0.68, blue:0.66, alpha:1).CGColor
            let color3 = UIColor(red:0.33, green:0.48, blue:0.51, alpha:1).CGColor
            let color4 = UIColor(red:0.36, green:0.32, blue:0.32, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 5:
            let color0 = UIColor(red:0.68, green:0.86, blue:0.79, alpha:1).CGColor
            let color1 = UIColor(red:0.86, green:0.92, blue:0.76, alpha:1).CGColor
            let color2 = UIColor(red:0.99, green:0.82, blue:0.71, alpha:1).CGColor
            let color3 = UIColor(red:0.97, green:0.66, blue:0.65, alpha:1).CGColor
            let color4 = UIColor(red:0.96, green:0.55, blue:0.58, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 6:
            let color0 = UIColor(red:0.97, green:0.69, blue:0.58, alpha:1).CGColor
            let color1 = UIColor(red:0.75, green:0.42, blue:0.52, alpha:1).CGColor
            let color2 = UIColor(red:0.95, green:0.45, blue:0.5, alpha:1).CGColor
            let color3 = UIColor(red:0.42, green:0.36, blue:0.49, alpha:1).CGColor
            let color4 = UIColor(red:0.2, green:0.36, blue:0.49, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 7:
            let color0 = UIColor(red:0.39, green:0.39, blue:0.39, alpha:1).CGColor
            let color1 = UIColor(red:0.93, green:0.91, blue:0.42, alpha:1).CGColor
            let color2 = UIColor(red:0.97, green:0.84, blue:0, alpha:1).CGColor
            let color3 = UIColor(red:0.97, green:0.56, blue:0.18, alpha:1).CGColor
            let color4 = UIColor(red:0.95, green:0.31, blue:0.31, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 8:
            let color0 = UIColor(red:0.56, green:0.25, blue:0.69, alpha:1).CGColor
            let color1 = UIColor(red:0.56, green:0.25, blue:0.69, alpha:1).CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        case 9:
            let color0 = UIColor(red:0.91, green:0.29, blue:0.21, alpha:1).CGColor
            let color1 = UIColor(red:0.91, green:0.29, blue:0.21, alpha:1).CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        case 10:
            let color0 = UIColor(red:0, green:0.74, blue:0.61, alpha:1).CGColor
            let color1 = UIColor(red:0, green:0.74, blue:0.61, alpha:1).CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        case 11:
            let color0 = UIColor(red:0.13, green:0.5, blue:0.73, alpha:1).CGColor
            let color1 = UIColor(red:0.13, green:0.5, blue:0.73, alpha:1).CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        case 12:
            let color0 = UIColor.blackColor().CGColor
            let color1 = UIColor.blackColor().CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        default: break
        }
         self.layer.insertSublayer(layer, atIndex: 0)
    }
}