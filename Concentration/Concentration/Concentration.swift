//
//  Concentration.swift
//  Concentration
//
//  Created by Arjun Bharadwaj on 3/22/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    
    func chooseCard(at index:Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        }
        else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }
}
