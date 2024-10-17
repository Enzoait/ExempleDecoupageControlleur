//
//  RockPaperScissorsView.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 16/10/2024.
//

import SwiftUI

struct RockPaperScissorsView : View {
    
    @StateObject var viewModel = MainViewModel()
    @State private var showRules : Bool = false
    
    @StateObject var rockPaperScissorsViewModel = RockPaperScissorsViewModel(playerScore: 0, computerScore: 0)
    @State private var displayResult : String = ""
    @State private var gameStateDisplayer : String = ""
    
    var body: some View {
        VStack {
            Text("Pierre Feuille Ciseaux")
                .font(.title)
                .fontWeight(.bold)
            Button {
                showRules = viewModel.displayRules(state: showRules)
            } label: {
                if !showRules {
                    Text(commonStrings.displayRules)
                        .tint(.green)
                }
                else {
                    VStack {
                        Text(commonStrings.pierreFeuilleCiseauxRules)
                            .foregroundStyle(.gray)
                        Text(commonStrings.hideRules)
                            .tint(.green)
                    }
                }
            }
            //MARK: Aire du jeu
            HStack{
                Button (action: {
                    displayResult =  rockPaperScissorsViewModel.RockClicked()
                    gameStateDisplayer = rockPaperScissorsViewModel.compareScores()
                }) {
                    Image("Pierre")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                }
                Button (action: {
                    displayResult = rockPaperScissorsViewModel.PaperClicked()
                    gameStateDisplayer = rockPaperScissorsViewModel.compareScores()
                }) {
                    Image("Feuille")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                }
                Button (action: {
                    displayResult = rockPaperScissorsViewModel.ScissorsClicked()
                    gameStateDisplayer = rockPaperScissorsViewModel.compareScores()
                }) {
                    Image("Ciseaux")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                }
            }
            Text(displayResult)
            Text(gameStateDisplayer)
        }
    }
}

#Preview {
    RockPaperScissorsView()
}
