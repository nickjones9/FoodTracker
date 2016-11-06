//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Nicholas Jones on 2016-11-05.
//  Copyright © 2016 Nicholas Jones. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    
    let spacing = 5
    let starCount = 5
    
    
    // MARK: Initialization
    
    override func layoutSubviews() {
        
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (44 + spacing))
            button.frame = buttonFrame
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        
         super.init(coder: aDecoder)
        
        for _ in 0..<starCount {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
        ratingButtons += [button]
        addSubview(button)
        }
    }

    override public var intrinsicContentSize: CGSize {
            get {
    return CGSize(width: 240, height: 44)
            }
    }

    //Mark: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }

}
