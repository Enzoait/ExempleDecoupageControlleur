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
    static let allCases : [availableApps] = [.pierreFeuilleCiseaux, .morpion, .autre]
    
    // Jeux
    
    case pierreFeuilleCiseaux = "Pierre Feuille Ciseaux"
    case morpion = "Morpion"
    case autre = "Autre"
    
    var image: Image {
        switch self {
            case .pierreFeuilleCiseaux:
                return Image("Ciseaux")
            case .morpion:
                return Image("Morpion")
            case .autre:
                return Image("Rien")
        }
    }
    
    var title: String {
        switch self {
            case .pierreFeuilleCiseaux:
                return "Pierre, Feuille, Ciseaux"
            case .morpion:
                return "Morpion"
            case .autre:
                return "Rien"
        }
    }
    
    var Game: some View {
        switch self {
            case .pierreFeuilleCiseaux:
                return RockPaperScissorsView()
            case .morpion:
                return RockPaperScissorsView()
            case .autre:
                return RockPaperScissorsView()
        }
    }
}

class commonStrings{
    
    static let pierreFeuilleCiseauxRules = "Vous devez choisir entre \"Pierre\", \"Feuille\", et \"Ciseaux\", et l’ordinateur fait un choix aléatoire pour déterminer si vous avez gagné ou perdu. Le 1er à 3 points gagne la partie."
    static let morpionRules = "Le jeu se présente sous la forme d'une grille de 3x3. A tour de rôle, vous et l'ordinateur déposez respectivement des croix ou des ronds sur la grille. Vous devez aligner 3 croix sur la grille avant que l'ordinateur n'ait aligné 3 ronds."
    
    // Règles 
    static let displayRules = "Afficher les règles du jeux."
    static let hideRules = "Masquer les règles du jeux."
    
}
