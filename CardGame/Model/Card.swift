//
//  Card.swift
//  CardGame
//
//  Created by Peterson, Jacob on 10/25/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import UIKit

class Card {
    
    private var backImage: UIImage
    private var isFaceUp: Bool
    
    init(){
        backImage = UIImage()
        isFaceUp = false
    }
    
    func getBackImage() -> UIImage{
        return backImage
    }
    
    func isFacingUp() -> Bool{
        return isFaceUp
    }
    
    func toString() -> String{
        let description = "This card is \(isFaceUp)"
        return description
    }
}