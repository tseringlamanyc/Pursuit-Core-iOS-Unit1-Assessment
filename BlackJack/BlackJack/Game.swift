//
//  Game.swift
//  BlackJack
//
//  Created by Tsering Lama on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    var deck = [Card]()
    var player = Player()
    var hitPlayer = false
    var computerNum = 0
    var hasMoreCards: Bool {
        return !deck.isEmpty
    }
    var randomComputerScore: Int {
        let randomScore = [18,19,20,21]
        return randomScore.randomElement() ?? 0
    }
    
    
    func newGame() {
        Card.newDeck(aceValue: 1)
        player.score = 0 
        computerNum = 0
    }
    
    func hitpass (_ userChoice: String) {
        if userChoice == "hit" {
            hitAgain = true
            var card = Card.newDeck(aceValue: 1).randomElement() ?? Card(suit: .diamond, value: 4, isFaceCard: false, face: .jack)
           print(card.stringify())
            player.cards.append(card.stringify())
            print(player.cards)
            player.score += card.value
            print("Score:\(player.score)")
            if player.score == 21 {
                hitAgain = false
                print("You won!!!!")
            } else {
                if player.score > 21 {
                    hitAgain = false
                    print("BUST")
                }
            }
        } else {
            if userChoice == "pass" {
                hitAgain = false
                computerNum = randomComputerScore
                print("The computer score is \(computerNum) and your score is \(player.score)")
            }
        }
    }
//
//    func computerVsPerson() {
//        if player.score == 21 {
//            hitAgain = false
//            print("You won, blackjack")
//        } else {
//            if player.score < computerNum {
//                print("You lost")
//            } else {
//                if player.score > computerNum {
//                    print("you won")
//                }
//            }
//        }
//    }
}





