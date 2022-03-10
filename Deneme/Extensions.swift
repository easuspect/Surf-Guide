//
//  Extensions.swift
//  Deneme
//
//  Created by NewMac on 2/10/22.
//

import Foundation
import UIKit


extension UIView {
    
    func addShadow(radius: CGFloat){
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.1
        self.layer.shadowRadius = radius
        self.layer.shadowColor = UIColor.lightGray.cgColor
    }
}
