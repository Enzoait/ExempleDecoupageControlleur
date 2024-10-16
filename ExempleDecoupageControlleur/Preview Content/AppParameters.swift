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
    static let allCases : [availableApps] = [.pierreFeuilleCiseaux, .jackpot, .autre]
    
    // Jeux
    
    case pierreFeuilleCiseaux = "Mystery"
    case jackpot = "Jackpot"
    case autre = "Autre"
    
    var image: Image {
        switch self {
            case .pierreFeuilleCiseaux:
                return Image("Ciseaux")
            case .jackpot:
                return Image("Jackpot")
            case .autre:
                return Image("Rien")
        }
    }
    
    var title: String {
        switch self {
            case .pierreFeuilleCiseaux:
                return "Pierre, Feuille, Ciseaux"
            case .jackpot:
                return "Jackpot"
            case .autre:
                return "Rien"
        }
    }
}

class commonStrings{
    
    static let pierreFeuilleCiseauxRules = "Vous devez choisir entre \"Pierre\", \"Feuille\", et \"Ciseaux\", et l’ordinateur fait un choix aléatoire pour déterminer si vous avez gagné ou perdu."
    
    // Règles accessibles
    static let displayRules = "Afficher les règles du jeux."
    static let hideRules = "Masquer les règles du jeux."
    
    
}
