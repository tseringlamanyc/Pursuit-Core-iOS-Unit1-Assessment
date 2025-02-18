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
    
    
    func shuffledDeck () -> Card? {
        deck = deck.shuffled()
        return deck.popLast()
    }
    
    func newGame() {
        deck = Card.newDeck(aceValue: 1).shuffled()
        player.cards.removeAll()
        player.score = 0 
        computerNum = 0
    }
    
    func hitpass (_ userChoice: String) {
        if userChoice == "hit" {
            hitAgain = true
    
            let card = deck.popLast() ?? Card(suit: .diamond, value: 4, isFaceCard: false, face: .jack)
            print()
            player.cards.append(card.stringify())
            
            let stringCard = player.cards.joined(separator: " ")
            
            print(stringCard)
            
            player.score += card.value
            print("Your current score is: \(player.score)")
            
            if player.score == 21 {
                hitAgain = false
                print("You won, blackjack!!!! ♠️🥳")
            } else {
                if player.score > 21 {
                    hitAgain = false
                    print("BUST 😢😅🤪")
                }
            }
        } else {
            if userChoice == "pass" {
                hitAgain = false
                computerNum = randomComputerScore
                print()
                print("The computer's score is \(computerNum) and your score is \(player.score)")
            }
        }
    }
    
    func computerVsPerson() {
        if player.score < computerNum && computerNum != 0 {
            hitAgain = false
            print("You lost 😆😆🤣, better luck next time.")
        } else {
            if player.score > computerNum && computerNum != 0 {
                hitAgain = false
                print("You won 🤩🤩🤩🤩🤩, congratulations on beating the cumputer.")
            } else {
                if player.score == computerNum {
                    hitAgain = false
                    print("Its a tie 😦😦😦😦😦.")
                }
            }
        }
    }
}






