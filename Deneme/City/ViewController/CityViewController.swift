//
//  CityViewController.swift
//  Deneme
//
//  Created by NewMac on 2/2/22.
//

import UIKit

class CityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func detailButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ShowListView", sender: self)
    }

}
