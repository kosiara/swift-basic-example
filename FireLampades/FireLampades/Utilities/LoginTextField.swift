//
// Created by Bartosz Kosarzycki on 1/25/17.
// Copyright (c) 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit

class LoginTextField: UITextField {

    var tintedClearImage: UIImage?

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTintColor()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTintColor()
    }

    func setupTintColor() {
        clearButtonMode = UITextFieldViewMode.WhileEditing
        borderStyle = UITextBorderStyle.RoundedRect
        layer.cornerRadius = 8.0
        layer.masksToBounds = true
        layer.borderColor = tintColor.CGColor
        layer.borderWidth = 1.5
        backgroundColor = UIColor.clearColor()
        textColor = tintColor
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        tintClearImage()
    }

    private func tintClearImage() {
        for view in subviews as! [UIView] {
            if view is UIButton {
                let button = view as! UIButton
                if let uiImage = button.imageForState(.Highlighted) {
                    if tintedClearImage == nil {
                        tintedClearImage = tintImage(uiImage, tintColor)
                    }
                    button.setImage(tintedClearImage, forState: .Normal)
                    button.setImage(tintedClearImage, forState: .Highlighted)
                }
            }
        }
    }
}

func tintImage(image: UIImage, color: UIColor) -> UIImage {
    let size = image.size

    UIGraphicsBeginImageContextWithOptions(size, false, image.scale)
    let context = UIGraphicsGetCurrentContext()
    image.drawAtPoint(CGPointZero, blendMode: CGBlendMode.Normal, alpha: 1.0)

    CGContextSetFillColorWithColor(context, color.CGColor)
    CGContextSetBlendMode(context, CGBlendMode.SourceIn)
    CGContextSetAlpha(context, 1.0)

    let rect = CGRectMake(
            CGPointZero.x,
            CGPointZero.y,
            image.size.width,
            image.size.height)
    CGContextFillRect(UIGraphicsGetCurrentContext(), rect)
    let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    return tintedImage
}
