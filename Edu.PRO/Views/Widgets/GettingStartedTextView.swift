//
//  GettingStartedTextView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 05/10/23.
//

import SwiftUI

struct GettingStartedTextView: View {
    @State var title: String
    @State var subTitle: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(title).font(Font.custom("Jost-Semibold", size: 24))
                
            Text(subTitle).font(Font.custom("Mulish-Bold", size: 15)).opacity(0.5)
        } .padding(5)
    }
}

#Preview {
    GettingStartedTextView(title: "Inicie agora!", subTitle: "Crie uma conta para continuar com seus cursos.")
}
