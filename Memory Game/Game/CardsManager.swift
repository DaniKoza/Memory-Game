//
//  CardsManager.swift
//  Memory Game
//
//  Created by Dani Koza on 30/04/2021.
//
import Foundation
import UIKit
typealias CardsArray = [Card]

// MARK: - CardsManager
class CardsManager {
    

    static let shared = CardsManager()
    
    static var defaultCardImages:[UIImage] = [
        UIImage(named: "monkey")!,
        UIImage(named: "parrot")!,
        UIImage(named: "snake")!,
        UIImage(named: "dog")!,
        UIImage(named: "cat")!,
        UIImage(named: "giraffe")!,
        UIImage(named: "frog")!,
        UIImage(named: "lion")!
    ];
    
    func getCardImages(numOfPairs: Int, completion: ((CardsArray?, Error?) -> ())?) {
        var cards = CardsArray()
        let cardImages = CardsManager.defaultCardImages
        
        for i in 0 ..< numOfPairs {
            let card = Card(image: cardImages[i])
            let copy = card.copy()
            
            cards.append(card)
            cards.append(copy)
        }
        
        completion!(cards, nil)
    }
}
