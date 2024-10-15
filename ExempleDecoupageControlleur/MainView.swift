//
//  MainView.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 15/10/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @State private var login: String = ""
    @State private var password: String = ""
    @State private var isValid: Bool = false
    
    var body: some View {
        NavigationStack {
            if !viewModel.isValid {
                VStack {
                    Text("Connexion").fontWeight(.bold).padding(.leading, 20)
                    TextField("Nom d'utilisateur", text: $login)
                        .frame(width: 246, height: 44)
                        .background(.white)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Mot de passe", text: $password)
                        .frame(width: 246, height: 44)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    Button {
                        viewModel.checkConnection(login: login, password: password)
                    } label : {
                        Text("Check")
                    }
                }
            }
            
            if viewModel.isValid {
                NavigationLink(destination: MenuAppsView()){
                    Text("Se connecter")
                }
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MainView()
}

