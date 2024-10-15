//
//  MainViewModel.swift
//  ExempleDecoupageControlleur
//
//  Created by AIT-YAKOUB Enzo on 15/10/2024.
//

import SwiftUI

class MainViewModel : ObservableObject {
    
    @Published var isValid = false
    
    func checkConnection(login: String, password: String) {
        if let realPassword = DataController.registredUsers[login]{
            if realPassword == password {
                isValid = true
            }
            else {
                isValid = false
            }
        }
        else {
            isValid = false
        }
    }
}
