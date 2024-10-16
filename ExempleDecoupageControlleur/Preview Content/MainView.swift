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
    @State private var noUsername : Bool = false
    @State private var noPassword : Bool = false
    @State private var invalidCredentials : Bool = false
    
    var body: some View {
        NavigationStack {
            if !viewModel.isValid {
                VStack {
                    
                    Image("Logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Text("L'Antre Des Jeux")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Fun. Amusants. Drôles.")
                        .foregroundStyle(.gray)
                    
                    TextField("Nom d'utilisateur", text: $login)
                        .frame(width: 246, height: 44)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Mot de passe", text: $password)
                        .frame(width: 246, height: 44)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        guard login != "" else {
                            noUsername = true
                            return
                        }
                        
                        guard password != "" else {
                            noPassword = true
                            return
                        }
                        viewModel.checkConnection(login: login, password: password)
                        
                        guard viewModel.isValid == true else {
                            invalidCredentials = true
                            return
                        }
                    } label : {
                        Text("Check")
                            .tint(.white)
                            .padding(5)
                    }
                    .background(.green)
                    .cornerRadius(7.5)
                }
            }
            
            if viewModel.isValid {
                Text("Bienvenue, \(login).")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                NavigationLink(destination: MenuAppsView()){
                    Text("Accèder aux jeux")
                        .tint(.green)
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .alert(isPresented: $noUsername) {
            Alert(title: Text("Connexion Impossible"), message: Text("Vous devez entrer un nom d'utilisateur."))
        }
        .alert(isPresented: $noPassword) {
            Alert(title: Text("Connexion Impossible"), message: Text("Vous devez entrer un mot de passe."))
        }
        .alert(isPresented: $invalidCredentials) {
            Alert(title: Text("Connexion Impossible"), message: Text("Identifiants incorrects."))
        }
    }
}

#Preview {
    MainView()
}

