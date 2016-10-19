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
    var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5
    
    
    override public var intrinsicContentSize: CGSize {
        get {
            let buttonSize = Int(frame.size.height)
            let width = (buttonSize * starCount) + (spacing * (starCount - 1))
            return CGSize(width: 240, height: 44)
        }
    }
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        let filledStarImage = UIImage(named: "BlackStar")
        let emptyStarImage = UIImage(named: "WhiteStar")
        
        for _ in 0..<starCount {
            let button = UIButton()
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            button.setImage(emptyStarImage, for: .normal)
            button.setImage(filledStarImage,for: .selected)
            button.setImage(filledStarImage, for: [.highlighted,.selected])
            button.adjustsImageWhenHighlighted = false
            ratingButtons += [button]
            addSubview(button)
            
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        rating = ratingButtons.index(of: button)! + 1
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index,button) in ratingButtons.enumerated() {
            button.isSelected = index < rating
        }
    }
    
    override func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        // Offset each button's origin by the length of the button plus spacing
        for(index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
            
        }
        
        updateButtonSelectionStates()
    }
}
