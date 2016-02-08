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
        layer.frame.size = CGSize(width: self.frame.width, height: self.frame.height * 2)
        layer.frame.origin = CGPointMake(0,-(self.frame.height * 0.5))
        
        switch palette{
        case 0:
            let color0 = UIColor.whiteColor().CGColor
            let color1 = UIColor.whiteColor().CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        case 1:
            let color0 = UIColor(red:0.9, green:0.94, blue:0.76, alpha:1).CGColor
            let color1 = UIColor(red:0.64, green:0.84, blue:0.67, alpha:1).CGColor
            let color2 = UIColor(red:0.22, green:0.68, blue:0.66, alpha:1).CGColor
            let color3 = UIColor(red:0.33, green:0.48, blue:0.51, alpha:1).CGColor
            let color4 = UIColor(red:0.36, green:0.32, blue:0.32, alpha:1).CGColor
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
            let color0 = UIColor(red:1, green:0.3, blue:0.29, alpha:1).CGColor
            let color1 = UIColor(red:1, green:0.57, blue:0.17, alpha:1).CGColor
            let color2 = UIColor(red:0.98, green:0.84, blue:0, alpha:1).CGColor
            let color3 = UIColor(red:0.93, green:0.9, blue:0.42, alpha:1).CGColor
            let color4 = UIColor(red:0.88, green:0.96, blue:0.76, alpha:1).CGColor
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
            let color0 = UIColor(red:0.71, green:0.85, blue:0.75, alpha:1).CGColor
            let color1 = UIColor(red:0.78, green:0.85, blue:0.75, alpha:1).CGColor
            let color2 = UIColor(red:0.85, green:0.86, blue:0.74, alpha:1).CGColor
            let color3 = UIColor(red:0.93, green:0.86, blue:0.73, alpha:1).CGColor
            let color4 = UIColor(red:1, green:0.86, blue:0.72, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 7:
            let color0 = UIColor(red:0.86, green:0.97, blue:0.95, alpha:1).CGColor
            let color1 = UIColor(red:1, green:0.99, blue:0.86, alpha:1).CGColor
            let color2 = UIColor(red:1, green:0.85, blue:0.84, alpha:1).CGColor
            let color3 = UIColor(red:0.97, green:0.64, blue:0.63, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3]
            layer.locations = [0.2,0.3,0.40,0.5,1]
        case 8:
            let color0 = UIColor(red:0.39, green:0.82, blue:0.91, alpha:1).CGColor
            let color1 = UIColor(red:0.65, green:0.86, blue:0.85, alpha:1).CGColor
            let color2 = UIColor(red:0.88, green:0.89, blue:0.8, alpha:1).CGColor
            let color3 = UIColor(red:0.96, green:0.53, blue:0.12, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3]
            layer.locations = [0.25,0.55,0.75,0.85]
        case 9:
            let color0 = UIColor(red:1, green:1, blue:0.97, alpha:1).CGColor
            let color1 = UIColor(red:0.91, green:0.99, blue:0.8, alpha:1).CGColor
            let color2 = UIColor(red:0.84, green:0.99, blue:0.69, alpha:1).CGColor
            let color3 = UIColor(red:0.69, green:0.99, blue:0.69, alpha:1).CGColor
            let color4 = UIColor(red:0.52, green:0.99, blue:0.69, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 10:
            let color0 = UIColor(red:0, green:0.76, blue:0.79, alpha:1).CGColor
            let color1 = UIColor(red:0.25, green:0.8, blue:0.8, alpha:1).CGColor
            let color2 = UIColor(red:0.47, green:0.84, blue:0.81, alpha:1).CGColor
            let color3 = UIColor(red:0.67, green:0.88, blue:0.83, alpha:1).CGColor
            let color4 = UIColor(red:0.88, green:0.93, blue:0.84, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.5,0.65]
        case 11:
            let color0 = UIColor(red:0.08, green:0.67, blue:0.9, alpha:1).CGColor
            let color1 = UIColor(red:0.27, green:0.73, blue:0.92, alpha:1).CGColor
            let color2 = UIColor(red:0.27, green:0.73, blue:0.92, alpha:1).CGColor
            let color3 = UIColor.whiteColor().CGColor
            let color4 = UIColor(red:0.82, green:0.91, blue:0.26, alpha:1).CGColor
            layer.colors = [color0,color1,color2,color3,color4]
            layer.locations = [0.2,0.3,0.40,0.6,0.75]
        case 12:
            let color0 = UIColor(red:0.49, green:0.83, blue:0.73, alpha:1).CGColor
            let color1 = UIColor(red:0.49, green:0.83, blue:0.73, alpha:1).CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        case 13:
            let color0 = UIColor(red:0.95, green:0.42, blue:0.29, alpha:1).CGColor
            let color1 = UIColor(red:0.95, green:0.42, blue:0.29, alpha:1).CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        case 14:
            let color0 = UIColor(red:0.35, green:0.64, blue:0.55, alpha:1).CGColor
            let color1 = UIColor(red:0.35, green:0.64, blue:0.55, alpha:1).CGColor
            layer.colors = [color0,color1]
            layer.locations = [0,1]
        default: break
        }
         self.layer.insertSublayer(layer, atIndex: 0)
    }
}