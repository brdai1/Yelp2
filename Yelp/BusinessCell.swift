//
//  BusinessCell.swift
//  Yelp
//
//  Created by user143116 on 9/21/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    
    @IBOutlet weak var thumbviewimage: UIImageView!
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var distancelabel: UILabel!
    
    @IBOutlet weak var ratingsimageview: UIImageView!
    
    @IBOutlet weak var reviewcountlabel: UILabel!
    
    @IBOutlet weak var addresslabel: UILabel!
    
    @IBOutlet weak var categorylabel: UILabel!
    
    var business: Business! {
        didSet {
            namelabel.text = business.name
            thumbviewimage.setImageWith(business.imageURL!)
            categorylabel.text = business.categories
            addresslabel.text = business.address
            reviewcountlabel.text = "\(business.reviewCount!) Reviews"
            ratingsimageview.image = business.ratingImage
            
            distancelabel.text = business.distance
            
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
