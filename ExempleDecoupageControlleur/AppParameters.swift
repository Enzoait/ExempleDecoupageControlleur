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
    static let allCases : [availableApps] = [.pierreFeuilleCiseaux, .jeuDuTemps, .autre]
    
    // Jeux
    
    case pierreFeuilleCiseaux = "Pierre Feuille Ciseaux"
    case jeuDuTemps = "Le Jeu Du Temps"
    case autre = "Autre"
    
    var image: Image {
        switch self {
            case .pierreFeuilleCiseaux:
                return Image("Ciseaux")
            case .jeuDuTemps:
                return Image("timer")
            case .autre:
                return Image("Box")
        }
    }
    
    var title: String {
        switch self {
            case .pierreFeuilleCiseaux:
                return "Pierre, Feuille, Ciseaux"
            case .jeuDuTemps:
                return "Jeu Du Temps"
            case .autre:
                return "Crédits"
        }
    }
    
    var Game: some View {
        
        switch self {
            case .pierreFeuilleCiseaux:
                return AnyView(RockPaperScissorsView())
            case .jeuDuTemps:
                return AnyView(JeuDuTempsView())
            case .autre:
                return AnyView(Rien())
        }
    }
}

class commonStrings{
    
    static let pierreFeuilleCiseauxRules = "Vous devez choisir entre \"Pierre\", \"Feuille\", et \"Ciseaux\", et l’ordinateur fait un choix aléatoire pour déterminer si vous avez gagné ou perdu. Le 1er à 3 points gagne la partie."
    static let jeuDuTempsRules = "Dans ce jeu un chronomètre va se lancer. Il faut que vous l'arretiez en cliquant sur le bouton \"Stop\" dès que le chronomètre atteint 5 secondes !"
    
    // Règles
    static let displayRules = "Afficher les règles du jeux."
    static let hideRules = "Masquer les règles du jeux."
    
}


