//
//  ContentCollectionCell.swift
//  Techelix UI Task
//
//  Created by Sabih Haris on 4/24/23.
//

import UIKit

class ContentCollectionCell: UICollectionViewCell {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.personImage.layer.cornerRadius = self.personImage.frame.height / 2

    }
    
    func setupCell(personImage:String,personName:String) {
        self.personName.text = personName
        self.personImage.image = UIImage(named: personImage)
    }

}
