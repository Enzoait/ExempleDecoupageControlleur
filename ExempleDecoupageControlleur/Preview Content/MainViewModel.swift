//
//  MainViewModel.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 15/10/2024.
//

import SwiftUI

class MainViewModel : ObservableObject {
    
    @Published var isValid = false
    var timer: Timer?
    @Published var score : Int = 0
    
    func checkConnection(login: String, password: String) {
        if let realPassword = DataController.registredUsers[login]{
            if realPassword == password {
                isValid = true
            }
            else {
                isValid = false
            }
        }
        else {
            isValid = false
        }
    }
    
    func additionne(_ a: Int, et b: Int) -> Int {
        return a + b
    }
    
    func launchChrono() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in self.score += 1})
    }
    
    func delayOnly() {
        _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { _ in self.score += 1})
    }
}
