//
//  CardGameController.swift
//  CardGame
//
//  Created by Peterson, Jacob on 10/27/16.
//  Copyright © 2016 Peterson, Jacob. All rights reserved.
//

import UIKit

class CardGameController: UIViewController {
    
    private lazy var clickCount = Int()
    private lazy var cardDeck = PlayingCardDeck()
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void{
        let tempCard = Card()
        print(tempCard.toString())
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        print("\(self.view.frame)")
    }
    
    @IBAction func cardClick(sender: UIButton) {
        self.clickCount += 1
        
        let content = "You clicked \(clickCount) times!"
        
        if let currentCard = cardDeck.drawRandomCard() as? PlayingCard{
            cardButton.setTitle(currentCard.getCardData(), forState: .Normal)
        }else{
            cardButton.setTitle("deck over", forState: .Normal)
        }
        
        cardLabel.text = content
    }
    
}
