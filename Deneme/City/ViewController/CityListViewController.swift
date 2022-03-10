//
//  CityListViewController.swift
//  Deneme
//
//  Created by NewMac on 2/4/22.
//

import UIKit

class CityListViewController: UIViewController {

    
    // MARK : Outlets
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK : Properties
    
    var cityList = [CityModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareUI()
        prepareList()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func prepareUI() {
        profileImageView.layer.cornerRadius = 40
    }
    
    func prepareList() {
        self.cityList = [CityModel(cityName: "Manuel Antonio Beach", cityImageName: "Manuel Antonio Beach", likeNumber: 35, navigationDuration: "6 min", cityDescription: "Manuel Antonio Beach is one of the most popular beach destinations in the country. This coastal gem borders Manuel Antonio National Park, a coastal rainforest teeming with wildlife. It takes about 30 minutes to hike from the park’s entrance to Manuel Antonio Beach. If you’re up for some rainforest exploration, the park is interconnected by hiking trails leading to other beaches within the park. Regardless, you’re practically guaranteed to see wildlife – namely monkeys. Don’t forget to wear your swimsuit and grab some snorkeling gear. The coral seascape is worth exploring."),CityModel(cityName: "Tamarindo Beach", cityImageName: "Tamarindo Beach", likeNumber: 12, navigationDuration: "3 min", cityDescription: "Interested in surfing? Visit Tamarindo Beach, off the wildly popular surf town of Tamarindo, where the perfect right breaks strike right off the coast. Tamarindo Beach is great for beginning surfers – so don’t be intimidated by its surf town reputation. There are a variety of accommodation options to choose from near Tamarindo Beach. Most hotels can either set you up or direct you to a nearby water sports rental. After a lively beach day, grab dinner in the happening town of Tamarindo. The neighboring white sand beach of Langosta is also worth a visit if you’re looking to swim and escape the crowds of Tamarindo."),CityModel(cityName: "Conchal Beach", cityImageName: "Conchal Beach", likeNumber: 56, navigationDuration: "8 min", cityDescription: "White sand and tiny seashells sprinkle the shoreline of Conchal Beach, a less frequented Guanacaste beach. A variety of coral and underwater discoveries can be made here – so bring your snorkeling gear! The beach backs up to the all-inclusive Westin Playa Conchal Resort and a variety of other rental properties."),CityModel(cityName: "Dominical Beach", cityImageName: "Dominical Beach", likeNumber: 44, navigationDuration: "4 min", cityDescription: "Located off the beaten path on the South Pacific coast, Dominical Beach is well known around the world as one of the best places for surfing. It also offers a wonderful beach surrounded by great restaurants. Dominical is the only beach with a year-round lifeguard program.")]
        
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCityDetail" {
            if let cityDetailVC = segue.destination as? CityDetailViewController {
                if let cityItem = sender as? CityModel {
                   cityDetailVC.selectedCity = cityItem
                }
            }
        }
    }
}


extension CityListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cityCell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityTableViewCell
        let selectedCity = self.cityList[indexPath.row]
        cityCell.prepareCell(cityItem: selectedCity)
        return cityCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCity = self.cityList[indexPath.row]
        self.performSegue(withIdentifier: "ShowCityDetail", sender: selectedCity)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 164
    }
    
}
