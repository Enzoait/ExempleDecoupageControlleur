//
//  TicTacToe.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 17/10/2024.
//

import SwiftUI

struct JeuDuTempsView : View {
    
    @StateObject var viewModel = MainViewModel()
    @StateObject var jeuDuTempsViewModel = JeuDuTempsViewModel()
    @State private var showRules : Bool = false
    @State private var endingMessage : String = ""
    @State private var endingTitle : String = ""
    
    var body: some View {
        VStack {
            Text("Le Jeu du Temps")
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
                        Text(commonStrings.jeuDuTempsRules)
                            .foregroundStyle(.gray)
                        Text(commonStrings.hideRules)
                            .tint(.green)
                    }
                }
            }
            //MARK: Aire du jeu
            Text("Chronomètre: ")
                .font(.title)
                .fontWeight(.bold)
            Text("\(jeuDuTempsViewModel.seconds).\(String(format: "%02d", jeuDuTempsViewModel.milliseconds)) s")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.gray)
            
            HStack{
                if jeuDuTempsViewModel.timer == nil {
                    Button {
                        jeuDuTempsViewModel.launchChrono()
                    }
                    label : {
                        Text("Go")
                            .tint(.white)
                            .padding(5)
                    }
                    .background(.green)
                    .cornerRadius(7.5)
                }
                if jeuDuTempsViewModel.timer != nil && jeuDuTempsViewModel.gameEnded == false {
                    Button {
                        jeuDuTempsViewModel.stopChrono()
                        endingMessage = jeuDuTempsViewModel.endingMessage()
                        endingTitle = jeuDuTempsViewModel.endingTitle()
                    }
                    label : {
                        Text("Stop")
                            .tint(.white)
                            .padding(5)
                    }
                    .background(.green)
                    .cornerRadius(7.5)
                }
                if jeuDuTempsViewModel.gameEnded == true {
                    VStack {
                        Button {
                            jeuDuTempsViewModel.tryAgain()
                        }
                        label : {
                            Text("Réessayer")
                                .tint(.white)
                                .padding(5)
                        }
                        .background(.green)
                        .cornerRadius(7.5)
                        Text("\(endingTitle)")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("\(endingMessage)")
                    }
                }
            }
        }
    }
}

#Preview {
    JeuDuTempsView()
}
