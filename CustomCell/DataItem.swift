//
//  DataItem.swift
//  CustomCell
//
//  Created by Pham Ngoc Hai on 12/7/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class dataItem {
    var imageLogo : UIImage!
    var nameClub : String!
    var stadiumName: String!
    var starRating: UIImage!
    init(nameClub: String,  stadiumName: String, imgLogo: String, numbStar: Int) {
        self.imageLogo = UIImage(named: imgLogo	)
        self.starRating = UIImage(named: "\(numbStar)stars.png")
        self.nameClub = nameClub
        self.stadiumName = stadiumName
    }
    
}
