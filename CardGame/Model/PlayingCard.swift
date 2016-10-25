//
//  PlayingCard.swift
//  CardGame
//
//  Created by Peterson, Jacob on 10/25/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import UIKit


class PlayingCard : Card {
    
    private var rank : Int
    private var suit : String
    private var color : UIColor
    
    override init(){
        rank = 0
        suit = ""
        color = UIColor()
        super.init()
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