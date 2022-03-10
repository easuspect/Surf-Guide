//
//  CityDetailViewController.swift
//  Deneme
//
//  Created by NewMac on 2/2/22.
//

import UIKit

class CityDetailViewController: UIViewController {

   // MARK: Outlets
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var optionBackgroundView: UIView!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    // MARK : Properties
    
    var selectedCity = CityModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareUI()
    }
    
    func prepareUI() {
        self.innerView.addShadow(radius: 28)
        self.optionBackgroundView.layer.cornerRadius = 20
        self.detailImageView.image = UIImage(named: selectedCity.cityImageName)
        self.likeLabel.text = "\(selectedCity.likeNumber)"
        self.durationLabel.text = selectedCity.navigationDuration
        self.descriptionTextView.text = selectedCity.cityDescription
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

