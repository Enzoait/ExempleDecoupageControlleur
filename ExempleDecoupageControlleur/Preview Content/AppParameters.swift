//
//  AppParameters.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 15/10/2024.
//

import SwiftUI

class AppParameters {
    static let backgroundColor: Color = .white
}

enum availableApps : String {
    static let allCases : [availableApps] = [.mystery, .jackpot, .autre]
    case mystery = "Mystery"
    case jackpot = "Jackpot"
    case autre = "Autre"
    
    var image: Image {
        switch self {
            case .mystery:
                return Image("Mystery")
            case .jackpot:
                return Image("Jackpot")
            case .autre:
                return Image("Rien")
        }
    }
    
    var title: String {
        switch self {
            case .mystery:
                return "Mystere"
            case .jackpot:
                return "Jackpot"
            case .autre:
                return "Rien"
        }
    }
}
