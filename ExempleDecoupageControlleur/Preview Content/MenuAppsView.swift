//
//  MenuAppsView.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 15/10/2024.
//

import SwiftUI

struct MenuAppsView : View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        VStack {
            ScrollView{
                
                Text("Menu des Jeux")
                    .font(.title)
                    .fontWeight(.bold)
                
                ForEach(availableApps.allCases, id: \.self) {
                    application in
                    //Text("\(nameApp.rawValue)")
                    IconView(image: application.image, name: application.title, app: application)
                }
            }
        }
    }
}

#Preview {
    MenuAppsView()
}
