//
//  CardView.swift
//  CardGame
//
//  Created by Peterson, Jacob on 11/21/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import UIKit

@IBDesignable class CardView: UIView {
    
    internal var frontImage: UIImageView
    internal var backImage: UIImageView
    @IBInspectable internal var isFaceUp: Bool
    @IBInspectable internal var cornerCurve: CGFloat
    internal var bottomLabel: UILabel
    internal var topLabel: UILabel
    
    init(){
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        cornerCurve = CGFloat()
        bottomLabel = UILabel()
        topLabel = UILabel()
        super.init(frame: CGRect(x: 0, y: 0, width: 400, height: 800))
    }
    
    required init?(coder acoder: NSCoder) {
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        cornerCurve = CGFloat()
        bottomLabel = UILabel()
        topLabel = UILabel()
        super.init(coder: acoder)
    }
    
    
}
