//
//  LampadesButton.swift
//  FireLampades
//
//  Created by Bartosz Kosarzycki on 1/20/17.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit

class LampadesButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = ColorUtil.colorWithHexString(hexString: "3bb6cd")
        layer.cornerRadius = 5;
    }
}
