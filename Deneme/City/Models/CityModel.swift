//
//  CityModel.swift
//  Deneme
//
//  Created by NewMac on 2/4/22.
//

import Foundation

class CityModel {
    
    var cityName: String = ""
    var cityImageName: String = ""
    var likeNumber: Int = 0
    var navigationDuration: String = ""
    var cityDescription: String = ""
    
    init(cityName: String = "", cityImageName: String = "", likeNumber: Int = 0, navigationDuration: String = "", cityDescription: String = "") {
        
        self.cityName = cityName
        self.cityImageName = cityImageName
        self.likeNumber = likeNumber
        self.navigationDuration = navigationDuration
        self.cityDescription = cityDescription
    } 
}
