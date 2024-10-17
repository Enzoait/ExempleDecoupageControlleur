//
//  TicTacToeViewModel.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 17/10/2024.
//

import SwiftUI

class JeuDuTempsViewModel : ObservableObject {
    
    @Published var score : Int = 0
    @Published var seconds: Int = 0
    @Published var milliseconds: Int = 0
    @Published var gameEnded : Bool = false
    
    private var tooEarly : Bool = false
    private var tooLate : Bool = false
    
    var timer: Timer?
    
    func launchChrono() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { _ in
            self.milliseconds += 1
            if self.milliseconds >= 100 {
                self.milliseconds = 0
                self.seconds += 1
            }
        })
    }
    
    func stopChrono() {
        timer?.invalidate()
        
        // Note : Permet de tester le cas où le chrono est arrêté à pile 5 secondes
        //seconds = 5
        //milliseconds = 0
    }
    
    func tryAgain() {
        seconds = 0
        milliseconds = 0
        timer = nil
        gameEnded = false
    }
    
    func calculateTimeAway() -> [Int]{
        let targetSeconds = 5
            let targetMilliseconds = 0
            var secondsAway = targetSeconds - seconds
            var millisecondsAway = targetMilliseconds - milliseconds
            
            if millisecondsAway < 0 {
                millisecondsAway += 100
                secondsAway -= 1
            }
            
            return [secondsAway, millisecondsAway]
    }
    
    func endingMessage() -> String {
        gameEnded = true
            let secondsAndMillisecondsTab = calculateTimeAway()
            let secondsAway = secondsAndMillisecondsTab[0]
            let millisecondsAway = secondsAndMillisecondsTab[1]

            if secondsAway == 0 && millisecondsAway == 0 {
                tooEarly = false
                tooEarly = false
                return "Vous avez arrêté le chrono pile sur 5 secondes !!"
            } else if secondsAway > 0 || (secondsAway == 0 && millisecondsAway > 0) {
                tooEarly = true
                return "Vous étiez à \(secondsAway) secondes et \(millisecondsAway) millisecondes d'arrêter le chrono pile sur 5 secondes"
            } else {
                tooLate = true
                return "Vous avez arrêté le chrono \(-secondsAway-1) secondes et \(100-millisecondsAway) millisecondes après 5 secondes !"
            }
    }
    
    func endingTitle() -> String {
        if tooLate == true {
            return "Trop tard !"
        }
        else if tooEarly == true {
            return "Trop tôt !"
        }
        else {
            return "Pile à l'heure !"
        }
    }
    
    func delayOnly() {
        _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { _ in self.score += 1})
    }
    
}
