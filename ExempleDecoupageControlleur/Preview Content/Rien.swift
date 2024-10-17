//
//  Rien.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 17/10/2024.
//

import SwiftUI

struct Rien : View {
    
    
    var body: some View {
        VStack {
            Text("Credits")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text("Créé par AIT-YAKOUB Enzo")
                .foregroundColor(.white)
            Text("M1 Lead Dev Full Stack de l'IIM")
                .foregroundColor(.white)
            Text("L'antre des jeux contient 2 Jeux : ")
                .foregroundColor(.white)
            Text("- Un Pierre Feuille Ciseaux")
                .foregroundColor(.white)
            Text("- Un Jeu Du Temps")
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

#Preview {
    Rien()
}
