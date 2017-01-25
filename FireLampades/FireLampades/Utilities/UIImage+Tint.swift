//
//  UIImage+Tint.swift
//  FireLampades
//
//  Created by Bartosz Kosarzycki on 1/25/17.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit

extension UIImage {
    func tintImage(color: UIColor) -> UIImage? {
        let currentSize = size
        
        UIGraphicsBeginImageContextWithOptions(currentSize, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        self.draw(at: CGPoint(x: 0, y: 0), blendMode: CGBlendMode.normal, alpha: 1.0)
        
        context.setFillColor(color.cgColor)
        context.setBlendMode(CGBlendMode.sourceIn)
        context.setAlpha(1.0)
        
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsGetCurrentContext()?.fill(rect)
        let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return tintedImage
    }
}
