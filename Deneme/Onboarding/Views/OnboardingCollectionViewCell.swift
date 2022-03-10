//
//  OnboardingCollectionViewCell.swift
//  Deneme
//
//  Created by NewMac on 2/10/22.
//

import UIKit
import Lottie

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    // MARK : Outlets
    
    @IBOutlet weak var animationView: AnimationView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func prepareCell(onboardingItem: OnboardingModel) {
        self.descriptionLabel.text = onboardingItem.animationDescription
        let path = Bundle.main.path(forResource: onboardingItem.animationName, ofType: "json") ?? ""
        animationView.animation = Animation.filepath(path)
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        animationView.play()
       
    }
    
}
