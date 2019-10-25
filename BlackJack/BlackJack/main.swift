//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation


//print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")
// There are 52 in a deck of cards

let game = Game()
var gameOver = false
var hitAgain = true

print("""
┬ ┬┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐  ┌┐ ┬  ┌─┐┌─┐┬┌─ ┬┌─┐┌─┐┬┌─
│││├┤ │  │  │ ││││├┤    │ │ │  ├┴┐│  ├─┤│  ├┴┐ │├─┤│  ├┴┐
└┴┘└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘  └─┘┴─┘┴ ┴└─┘┴ ┴└┘┴ ┴└─┘┴ ┴
""")
print()

repeat {
    
    repeat {
        print()
        print("Do you want to hit or pass? Type (hit or pass)")
        
        var userChoice = readLine()?.lowercased() ?? ""
        
        game.hitpass(userChoice)
        
        
    } while hitAgain == true
    
    game.computerVsPerson()
    
    print()
    print("Do you want to play again? Please type Yes or no")
    let userContinue = readLine() ?? ""
    
    if userContinue == "yes" {
        game.newGame()
        gameOver = false
    } else {
        print()
        print("Bye, thank you for trying out my blackjack game.")
        gameOver = true
    }
    
} while gameOver == false



