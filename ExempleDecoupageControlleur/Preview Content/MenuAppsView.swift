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
        NavigationStack {
            VStack {
                ScrollView{
                    Text("Score: \(viewModel.score)")
                    
                    HStack{
                        Button {
                            viewModel.launchChrono()
                        }
                        label : {
                            Text("Go")
                        }
                        
                        Button {
                            viewModel.timer?.invalidate()
                        }
                        label : {
                            Text("Stop")
                        }
                        
                        Button {
                            viewModel.score = 0
                        }
                        label : {
                            Text("Reset")
                        }
                    }
                    
                    Text("Menu des Applications")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    ForEach(availableApps.allCases, id: \.self) {
                        application in
                        //Text("\(nameApp.rawValue)")
                        IconView(image: application.image, name: application.title)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuAppsView()
}
