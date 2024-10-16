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
            
            
        }
    }
}

#Preview {
    RockPaperScissorsView()
}
