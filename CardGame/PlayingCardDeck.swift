//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Peterson, Jacob on 10/31/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import Foundation

class PlayingCardDeck: Deck{
    
    
    override init(){
        super.init()
        
        for suit in PlayingCard.validRanks(){
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1 {
                let tempCard = PlayingCard(withRank: rank, ofSuit: suit)
                cards.append(tempCard)
            }
        }
    }
    
    func orderDeck() -> Void{
        
    }
    
}