//
//  RPSModel.swift
//  RPS-Chilakala
//
//  Created by Chilakala Krishna Reddy,Darshan Reddy on 2/19/18.
//  Copyright © 2018 Chilakala Krishna Reddy,Darshan Reddy. All rights reserved.
//

import Foundation

class RPSModel {
    
    private static var SharedRPSModel:RPSModel{
        let rpsmodel=RPSModel()
        return rpsmodel
    }
    
    enum Choice {
        case None, Rock, Paper, Scissor
    }
    
    private var _Player1Choice : Choice = .None
    var Player1Choice:Choice{
        get{
            return _Player1Choice
        }
  
    }
    private var _Player2Choice : Choice = .None
    var Player2Choice:Choice{
        get{
            return _Player2Choice
        }
    }
    var Player1WinCount : Int = 0
    var Player2WinCount : Int = 0
    
    init() {
        _Player1Choice = .None
        _Player2Choice = .None
    }
    func reset() {
        _Player1Choice = .None
        _Player2Choice = .None
        Player1WinCount = 0
        Player2WinCount = 0
    }
    
    func haveResult() -> Bool {
        if (!(Player1Choice == .None) || !(Player2Choice == .None)){
            return true
        }else{
            return false
        }
    }
    
    func winner() -> String {
        
        if(Player1Choice == Player2Choice) {
            return "It's a tie"
        }
        else{
            if Player1Choice == .Rock {
                if Player2Choice == .Paper {
                    Player2WinCount += 1
                    return "Player 2 wins"
                }
                else {
                    Player1WinCount += 1
                    return "Player 1 wins"
                }
            }
            else if Player1Choice == .Scissor {
                if Player2Choice == .Rock {
                    Player2WinCount += 1
                    return "Player 2 wins"
                }
                else{
                    Player1WinCount += 1
                    return "Player 1 wins"
                }

            }
            else if Player1Choice == .Paper {
                if Player2Choice == .Scissor {
                    Player2WinCount += 1
                    return "Player 2 wins"
                }
                else {
                    Player1WinCount += 1
                    return "Player 1 wins"
                }
            }
        }
        return ""
        
    }
    
    func ChoosePlayer1(pick:Choice) {
        _Player1Choice = pick
    }
    
    func ChoosePlayer2(pick:Choice) {
        _Player2Choice = pick
    }
    
    class func sharedrps()->RPSModel
    {
        return SharedRPSModel
    }
}
