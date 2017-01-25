//
// Created by Bartosz Kosarzycki on 1/25/17.
// Copyright (c) 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit

class LoginTextField: UITextField {

    var tintedClearImage: UIImage?
    var borderWidth = 0.5

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTintColor()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTintColor()
    }

    private func refreshProperties() {
        layer.borderWidth = CGFloat(borderWidth)
    }

    func setupTintColor() {
        clearButtonMode = UITextFieldViewMode.whileEditing
        borderStyle = UITextBorderStyle.roundedRect
        layer.cornerRadius = 4.0
        layer.masksToBounds = true
        layer.borderColor = tintColor.cgColor
        layer.borderWidth = CGFloat(borderWidth)
        backgroundColor = UIColor.clear
        textColor = tintColor
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        tintClearImage()
        refreshProperties()
    }

    private func tintClearImage() {
        for view in subviews as [UIView] {
            if view is UIButton,
            let button = view as? UIButton,
            let uiImage = button.image(for: .highlighted) {
                    tintedClearImage = tintedClearImage == nil ? uiImage.tintImage(color: tintColor) : tintedClearImage

                    button.setImage(tintedClearImage, for: .normal)
                    button.setImage(tintedClearImage, for: .highlighted)
            }
        }
    }
}

