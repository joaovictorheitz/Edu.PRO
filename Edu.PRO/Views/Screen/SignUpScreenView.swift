//
//  SignUpScreenView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 05/10/23.
//

import SwiftUI

struct SignUpScreenView: View {
    @State private var email: String
    @State private var password: String
    
    public init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        Image("Logo").padding(50)
                    }
                    
                    HStack {
                        GettingStartedTextView(title: "Inicie agora!", subTitle: "Crie uma conta para continuar com seus cursos.")
                        
                        Spacer()
                    }.padding(20)
                    
                    VStack (spacing: 25) {
                        InputView(label: "E-mail", value: $email, safety: false)
                        InputView(label: "Senha", value: $password, safety: true)
                    }
                    
                    HStack {
                        CustomCheckBoxView(text: "Aceito os Termos e Condições")
                        
                        Spacer()
                    } .padding(.top) .padding(.leading, 25) .padding(.bottom)
                    
                    HStack {
                        ButtonSignUpView()
                    }
                    
                    HStack {
                        OrContinueWithView()
                    }.padding(.top)
                    
                    HStack {
                        SingUpNaviLinkView()
                    }.padding(.top)
                    
                    Spacer()
                }
            }
            .background(Color.background)
        }
    }
}

#Preview {
    SignUpScreenView()
}
