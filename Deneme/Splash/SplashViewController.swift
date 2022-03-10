//
//  SplashViewController.swift
//  Deneme
//
//  Created by NewMac on 2/11/22.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        if UserDefaults.standard.bool(forKey: "hasOnboardingWalkThrough") {
            self.performSegue(withIdentifier: "ShowCity", sender: self)
        } else {
            self.performSegue(withIdentifier: "ShowOnboarding", sender: self)
        }
    }
}
