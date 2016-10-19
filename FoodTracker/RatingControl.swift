//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Ivy Chenyao on 10/19/16.
//  Copyright © 2016 Ivy Chenyao. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    override public var intrinsicContentSize: CGSize {
        get {
            return CGSize(width: 240, height: 44)
        }
    }
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        addSubview(button)
        
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 😴")
    }
    
}
