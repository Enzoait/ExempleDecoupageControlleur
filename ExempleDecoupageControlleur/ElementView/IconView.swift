//
//  IconView.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 16/10/2024.
//

import SwiftUI

struct IconView: View {
    
    let image: Image
    let name: String
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10.0)

            Text(name)
                .foregroundStyle(.green)
                .frame(width: 200, height: 50)
                .overlay {
                    RoundedRectangle(cornerRadius: 20).stroke(Color.green, lineWidth: 3)
                }
        }
        .frame(width: 220, height: 260)
        
        /*
        .background(LinearGradient(colors: [.red, .green, .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
        .overlay {
            RoundedRectangle(cornerRadius: 20).stroke(Color.green, lineWidth: 3)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
        .background(LinearGradient(colors: [.red, .orange], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
         */
    }
}

#Preview {
    IconView(image: Image("Box"), name: "Jeu")
}
