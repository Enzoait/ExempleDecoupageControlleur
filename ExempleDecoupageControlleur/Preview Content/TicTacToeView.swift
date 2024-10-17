//
//  TicTacToe.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 17/10/2024.
//

import SwiftUI

struct TicTacToeView : View {
    
    @StateObject var viewModel = MainViewModel()
    @State private var showRules : Bool = false
    @State private var gridValues = Array(repeating: "", count: 9)
    
    var body: some View {
        VStack {
            Text("Morpion")
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
                        Text(commonStrings.morpionRules)
                            .foregroundStyle(.gray)
                        Text(commonStrings.hideRules)
                            .tint(.green)
                    }
                }
            }
            //MARK: Aire du jeu
            Grid {
                        ForEach(0..<3) { row in
                            GridRow {
                                ForEach(0..<3) { column in
                                    let index = row * 3 + column
                                    Button(action: {
                                        
                                    }) {
                                        Text(gridValues[index])
                                            .frame(width: 100, height: 100)
                                            .background(.gray.opacity(0.2))
                                            .border(.green, width: 1)
                                    }
                                }
                            }
                        }
                    }
        }
    }
}

#Preview {
    TicTacToeView()
}
