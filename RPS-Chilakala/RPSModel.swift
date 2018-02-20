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
    
    var Player1Choice : Choice = .None
    var Player2Choice : Choice = .None
    var Player1WinCount : Int = 0
    var Player2WinCount : Int = 0
    
    func reset() {
        Player1Choice = .None
        Player2Choice = .None
    }
    
    func haveResult() -> Bool {
        return Player1Choice != .None && Player2Choice != .None
    }
    
    func winner() -> String {
        
        if((Player1Choice == .Rock && Player2Choice == .Paper) || (Player1Choice == .Paper && Player2Choice == .Scissor) || (Player1Choice == .Scissor && Player2Choice == .Rock)){
            Player2WinCount += 1
            return "Player 2 Wins"
        }
        else if Player1Choice == Player2Choice {
            return "Its a tie"
        }
        else{
            Player1WinCount += 1
            return "Player 1 wins"
        }
        
    }
    
    func ChoosePlayer1(pick:Choice) {
        Player1Choice = pick
    }
    
    func ChoosePlayer2(pick:Choice) {
        Player1Choice = pick
    }
    
    class func sharedrps()->RPSModel
    {
        return SharedRPSModel
    }
}
