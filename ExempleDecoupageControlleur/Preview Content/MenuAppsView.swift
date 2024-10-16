//
//  MenuAppsView.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 15/10/2024.
//

import SwiftUI

struct MenuAppsView : View {
    var body: some View {
        VStack {
            ScrollView{
                Text("Menu des applications")
                
                ForEach(availableApps.allCases, id: \.self) {
                    application in
                    //Text("\(nameApp.rawValue)")
                    IconView(image: application.image, name: application.title)
                }
            }
        }
        
    }
}

#Preview {
    MenuAppsView()
}
