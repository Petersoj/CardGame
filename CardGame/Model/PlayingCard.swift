//
//  PlayingCard.swift
//  CardGame
//
//  Created by Peterson, Jacob on 10/25/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import UIKit


class PlayingCard : Card {
    
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    
    override init(){
        suit = ""
        color = UIColor.redColor()
        rank = 0
        super.init()
    }
    
    init(withRank: Int, ofSuit: String){
        color = UIColor.redColor()
        suit = ofSuit
        rank = withRank
        super.init()
    }
    
    func getRank() -> Int{
        return rank
    }
    
    func getSuit() -> String{
        return suit
    }
    
    func getCardData() -> String{
        return "\(PlayingCard.validRanks()[rank]) \(suit)"
    }
    
    func getColor() -> UIColor{
        return color
    }
    
    override func toString() -> String {
        let description = "PlayerCard has Rank: \(rank), Suit: \(suit), and Color: \(color.description)"
        return description
    }
    
    //The Class modifier makes it so the moethod is visible without an instance
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    class func validRanks() -> [String]{
        return ["??","A","1","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int{
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]{
        return ["♦️","♣️","♥️","♠️"]
    }
}