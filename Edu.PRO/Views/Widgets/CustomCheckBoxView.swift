//
//  CustomCheckBoxView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 05/10/23.
//

import SwiftUI

struct CustomCheckBoxView: View {
    @State var checked: Bool = false
    @State var text: String
    
    var body: some View {
        HStack {
            if checked {
                
                Button(action: { checked.toggle() }, label: {
                    Image("CheckedBox").frame(width: 24, height: 24)
                }).padding(5)
                
            } else {
                
                Button(action: { checked.toggle() }, label: {
                    Circle().frame(width: 24, height: 24)
                }).padding(5)
                
            }
            Text(text)
        }
    }
}

#Preview {
    CustomCheckBoxView(text: "Aceito os Termos e Condições")
}
