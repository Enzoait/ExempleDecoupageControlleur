//
//  TicTacToeViewModel.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 17/10/2024.
//

import SwiftUI

class TicTacToeViewModel : ObservableObject {
    
    
    func checkIfAlreadyPlaced(objet: String) -> Bool {
        if objet != "" {
            return true
        }
        else{
            return false
        }
    }
}
