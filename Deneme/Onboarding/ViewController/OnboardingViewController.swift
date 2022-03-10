//
//  OnboardingViewController.swift
//  Deneme
//
//  Created by NewMac on 2/10/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    // MARK : Outlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    // MARK : Properties
    
    var selectedIndex = 0
    var onboardingList = [OnboardingModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareList()
    }
    
    func prepareList() {
        self.onboardingList = [OnboardingModel(animationName: "Onboarding1", animationDescription: "dkjvnkjfdvnakjfnvkajfnvkjnvkjvnkjvn"), OnboardingModel(animationName: "Onboarding2", animationDescription: "kjhbhbljhbljhb ljhbsdjlchabsdcjlh"), OnboardingModel(animationName: "Onboarding3", animationDescription: "kjhbhbljljknkjn   kjnkjnkjn  kjn")
        ]
        self.collectionView.reloadData()
    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        if self.selectedIndex == 2 {
            UserDefaults.standard.set(true, forKey: "hasOnboardingWalkThrough")
            self.performSegue(withIdentifier: "ShowCity", sender: self)
            return
        }
        self.selectedIndex += 1
        self.collectionView.scrollToItem(at: IndexPath(item: selectedIndex, section: 0), at: .centeredHorizontally, animated: true)
        self.collectionView.setNeedsLayout()
        self.pageControl.currentPage = self.selectedIndex
    }
    
    @IBAction func skipButtonPress(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "hasOnboardingWalkThrough")
        self.performSegue(withIdentifier: "ShowCity", sender: self)
    }
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return onboardingList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let onboardingCell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCell", for: indexPath) as! OnboardingCollectionViewCell
        let selectedOnboardingItem = onboardingList[indexPath.item]
        onboardingCell.prepareCell(onboardingItem: selectedOnboardingItem)
        return onboardingCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
}
