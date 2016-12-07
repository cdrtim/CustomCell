//
//  Master Table.swift
//  CustomCell
//
//  Created by Pham Ngoc Hai on 12/7/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class Master_Table: UITableViewController {
    
    var arrayData : [dataItem]!
    var detailVC : DetailVC!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "TableCustom", bundle: nil), forCellReuseIdentifier: "Cell")
        let attributes = [NSFontAttributeName: UIFont(name: "Helvetica Neue", size: 25)!] //change size as per your need here.
        self.navigationController?.navigationBar.titleTextAttributes = attributes
//        let lbl = UILabel()
//        lbl.text = "Ngoại hạng anh"
        self.title = "Ngoại hạng anh"
    

        
        let item1: dataItem = dataItem.init(nameClub: "Manchester United", stadiumName: "Old Trafford", imgLogo: "MU.png", numbStar: 5)
        let item2: dataItem = dataItem.init(nameClub: "Chelsea", stadiumName: "Stamford Bridge", imgLogo: "Chelsea.png", numbStar: 4)
        let item3: dataItem = dataItem.init(nameClub: "Arsenal", stadiumName: "Emirates", imgLogo: "Arsenal.png", numbStar: 4)
        let item4: dataItem = dataItem.init(nameClub: "Manchester City", stadiumName: "Etihad", imgLogo: "MC.png", numbStar: 3)
        let item5: dataItem = dataItem.init(nameClub: "Liverpool", stadiumName: "Anfield", imgLogo: "Liverpool.png", numbStar: 2)
        
        
        arrayData = [item1, item2, item3, item4, item5]
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayData.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableCustom! = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableCustom
        let item: dataItem = arrayData[indexPath.row]
        cell.name.text = item.nameClub
        cell.stadium.text = item.stadiumName
        cell.logo.image = item.imageLogo
        cell.starRating.image = item.starRating
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
        
        
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let imgview : UIImageView = UIImageView(image: UIImage(named: "EPL Banner.jpg"))
        return imgview
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let img : UIImageView = UIImageView(image: UIImage(named: "EPL.Jpg"))
        img.contentMode = .scaleToFill
        return img
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 150
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if detailVC == nil {
            detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        }
        let backItem = UIBarButtonItem()
        backItem.title = "Trở về"
        
        
        
   
        navigationItem.backBarButtonItem = backItem
        let item = arrayData[indexPath.row]
        detailVC.stringTitle = item.stadiumName
        //self.navigationItem.leftBarButtonItem?.title = "Trở về"
        self.navigationController?.pushViewController(self.detailVC, animated: true)
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
