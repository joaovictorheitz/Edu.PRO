//
//  SingUpNaviLinkView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 25/10/23.
//

import SwiftUI

struct SingUpNaviLinkView: View {
    var body: some View {
        HStack {
            Text("Não tem uma conta?")
            NavigationLink(destination: ContentView(), label: {
                Text("Cadastre-se")
                    .foregroundColor(Color.blue)
            })
        }
    }
}

#Preview {
    SingUpNaviLinkView()
}
