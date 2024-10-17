//
//  RockPaperScissorsViewModel.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 17/10/2024.
//

import SwiftUI

class RockPaperScissorsViewModel : ObservableObject {
    @Published var playerScore : Int
    @Published var computerScore : Int
    
    init(playerScore: Int, computerScore: Int) {
        self.playerScore = playerScore
        self.computerScore = computerScore
    }
    
    func computerMove() -> String {
        let currentMove : Int = Int.random(in: 1...3)
        
        switch currentMove {
            case 1:
                return "Pierre"
            case 2:
                return "Feuille"
            case 3:
                return "Ciseaux"
            default:
                return "Une erreur est survenue."
        }
        
    }
    
    func RockClicked() -> String {
        
        if checkIfGameEnded() == true {
            return ""
        }
        
        let computerMove : String = computerMove()
        
        switch computerMove {
            case "Pierre":
                return "Egalité !"
            case "Feuille":
                computerScore += 1
                return "+1 point pour l'ordinateur."
            case "Ciseaux":
                playerScore += 1
                return "+1 point pour vous."
            default:
                return "Une erreur est survenue."
        }
    }
    
    func PaperClicked() -> String {
        
        if checkIfGameEnded() == true {
            return ""
        }
        
        let computerMove : String = computerMove()
        
        switch computerMove {
            case "Pierre":
                playerScore += 1
                return "+1 point pour vous."
            case "Feuille":
                return "Egalité !"
            case "Ciseaux":
                computerScore += 1
                return "+1 point pour l'ordinateur."
            default:
                return "Une erreur est survenue."
        }
    }
    
    func ScissorsClicked() -> String {
        
        if checkIfGameEnded() == true {
            return ""
        }
        
        let computerMove : String = computerMove()
        
        switch computerMove {
            case "Pierre":
                computerScore += 1
                return "+1 point pour l'ordinateur."
            case "Feuille":
                playerScore += 1
                return "+1 point pour vous."
            case "Ciseaux":
                return "Egalité !"
            default:
                return "Une erreur est survenue."
        }
    }
    
    func compareScores() -> String {
        playerScore = self.playerScore
        computerScore = self.computerScore
        
        if playerScore < 3 && computerScore < 3 {
            return "Vous : \(playerScore) pts. / Ordinateur : \(computerScore) pts."
        }
        else if playerScore == 3 {
            return "Vous avez gagné !"
        }
        else {
            return "L'ordinateur a gagné."
        }
    }
    
    func checkIfGameEnded() -> Bool {
        let scores : String = compareScores()
        
        if scores == "Vous avez gagné !" || scores == "L'ordinateur a gagné." {
            return true
        }
        else{
            return false
        }
    }
}
