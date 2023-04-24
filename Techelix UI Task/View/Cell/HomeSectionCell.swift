//
//  HomeTableViewCell.swift
//  Techelix UI Task
//
//  Created by Sabih Haris on 4/23/23.
//

import UIKit

class HomeSectionCell: UITableViewCell {
    
    private var resuseIdentifier = "ContentCollectionCell"
    
    var sportsData = [Team]()
    
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    @IBOutlet weak var outerView: UIView!
    @IBOutlet weak var timingView: UIView!
    @IBOutlet weak var headingLbl: UILabel!
    @IBOutlet weak var timingLbl: UILabel!
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.register(UINib(nibName: "ContentCollectionCell", bundle: nil), forCellWithReuseIdentifier: resuseIdentifier)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.outerView.layer.cornerRadius = 10
             self.outerView.clipsToBounds = true

    }
    
    func configureCell(data: Sport) {
        self.headingLbl.text = data.name
        self.timingLbl.text = data.timings
        self.sportsData = data.team
        self.collectionView.reloadData()
        collectionViewHeight.constant = collectionView.collectionViewLayout.collectionViewContentSize.height
           self.layoutIfNeeded()
    }
    
}


extension HomeSectionCell: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return sportsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : ContentCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.resuseIdentifier, for: indexPath) as! ContentCollectionCell
        cell.setupCell(personImage: sportsData[indexPath.row].image, personName :sportsData[indexPath.row].name)
        return cell
    }
}


extension HomeSectionCell: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension HomeSectionCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 130)
        
    }
    
}
