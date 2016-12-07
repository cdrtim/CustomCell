//
//  DetailVC.swift
//  CustomCell
//
//  Created by Pham Ngoc Hai on 12/7/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var stadiumImg: UIImageView!
    var stringTitle : String!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor.black
    
    }
        override func viewWillAppear(_ animated: Bool) {
        self.stadiumImg.image = UIImage(named: "\(stringTitle!).jpg")
        self.stadiumImg.contentMode = .scaleAspectFit
        self.title = stringTitle
    }

  
}
