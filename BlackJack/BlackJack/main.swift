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

//print("Whats your name?")
//
//let userName = readLine()?.lowercased() ?? "no name"
//
//print("\(userName) welcome to blackjack")
//print()

repeat {
    
    repeat {
        
        print("Do you want to hit or pass? Type (hit or pass)")
        
        var userChoice = readLine()?.lowercased() ?? ""
        
        game.hitpass(userChoice)
        
        
    } while hitAgain == true
    

    
    print("want to play again? Yes or no")
    let userContinue = readLine() ?? ""
    
    if userContinue == "yes" {
        game.newGame()
        gameOver = false
    } else {
        print("bye")
        gameOver = false
    }
    
} while gameOver == false



