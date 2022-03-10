//
//  CityTableViewCell.swift
//  Deneme
//
//  Created by NewMac on 2/4/22.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    // MARK : Outlets
    
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var innerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cityImageView.layer.cornerRadius = 24
        self.innerView.addShadow(radius: 24)
        
    }
    
    func prepareCell(cityItem: CityModel) {
        self.cityImageView.image = UIImage(named: cityItem.cityImageName)
        self.titleLabel.text = cityItem.cityName
        self.descriptionLabel.text = cityItem.cityDescription
    }
}
