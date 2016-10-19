//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Ivy Chenyao on 10/19/16.
//  Copyright © 2016 Ivy Chenyao. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // MARK: Properties
    var rating = 0
    var ratingButtons = [UIButton]()
    
    override public var intrinsicContentSize: CGSize {
        get {
            return CGSize(width: 240, height: 44)
        }
    }
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        for _ in 0..<5 {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.red
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            ratingButtons += [button]
            addSubview(button)
            
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 😴")
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing
        for(index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    
    
}
