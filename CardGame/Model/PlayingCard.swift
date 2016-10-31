//
//  PlayingCard.swift
//  CardGame
//
//  Created by Peterson, Jacob on 10/25/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import UIKit


class PlayingCard : Card {
    
    internal var rank : Int{
        get {
            return self.rank
        }
        set (newRank) {
            self.rank = newRank
        }
    }
    internal var suit : String
    internal var color : UIColor
    
    override init(){
        suit = ""
        color = UIColor()
        super.init()
        rank = 0
    }
    
    func getRank() -> Int{
        return rank
    }
    
    func getSuit() -> String{
        return suit
    }
    
    func getColor() -> UIColor{
        return color
    }
    
    override func toString() -> String {
        let description = "PlayerCard has Rank: \(rank), Suit: \(suit), and Color: \(color.description)"
        return description
    }
}