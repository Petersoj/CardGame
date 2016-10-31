//
//  Card.swift
//  CardGame
//
//  Created by Peterson, Jacob on 10/25/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import UIKit

class Card {
    
    internal var backImage: UIImage{
        get{
            return self.backImage
        }
        set(backImage){
            self.backImage = backImage
        }
    }
    internal var isFaceUp: Bool{
        get{
            return self.isFaceUp
        }
        set(isFaceUp){
            self.isFaceUp = isFaceUp
        }
    }
    
    init(){
        backImage = UIImage()
        isFaceUp = false
    }
    
    func getBackImage() -> UIImage{
        return backImage
    }
    func setBackImage(backImage: UIImage){
        self.backImage = backImage
    }

    
    func isFacingUp() -> Bool{
        return isFaceUp
    }
    func setFacingUp(face: Bool){
        self.isFaceUp = face
    }
    
    func toString() -> String{
        let description = "This card is facing \(isFaceUp) and \(self.getBackImage()) is the image"
        return description
    }
}