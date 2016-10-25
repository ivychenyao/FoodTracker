//
//  Meal.swift
//  FoodTracker
//
//  Created by Ivy Chenyao on 10/25/16.
//  Copyright © 2016 Ivy Chenyao. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
}
