//
//  ContentView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 03/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String
    @State private var password: String
    
    public init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    var body: some View {
        VStack (spacing: 20) {
            InputView(label: "E-mail", value: $email, safety: false)
            InputView(label: "Senha", value: $password, safety: true)
        }
    }
}

#Preview {
    ContentView()
}
