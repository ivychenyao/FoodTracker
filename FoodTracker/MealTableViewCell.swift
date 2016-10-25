//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Ivy Chenyao on 10/25/16.
//  Copyright © 2016 Ivy Chenyao. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    @IBOutlet weak var mealImageView: UIImageView!

    @IBOutlet weak var mealLabel: UILabel!
    
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
