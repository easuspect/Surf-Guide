//
//  OnboardingModel.swift
//  Deneme
//
//  Created by NewMac on 2/10/22.
//

import Foundation

struct OnboardingModel {
     
    var animationName: String!
    var animationDescription: String!
    
    init(animationName: String = "", animationDescription: String = "") {
        
        self.animationName = animationName
        self.animationDescription = animationDescription
    }
}
