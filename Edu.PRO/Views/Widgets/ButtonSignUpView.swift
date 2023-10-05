//
//  ButtonSignUpView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 05/10/23.
//

import SwiftUI

struct ButtonSignUpView: View {
    @State var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                Capsule().fill(Color(red: 9/255, green: 97/255, blue: 245/255))
                
                HStack (spacing: 75) {
                    Spacer()
                    
                    Text("Cadastre-se")
                    Image("Icon_Button").padding(.trailing, 5)
                }
            }
        }) .frame(width: 350, height: 60)
    }
}

#Preview {
    ButtonSignUpView(action: {
        print("Pressed!")
    })
}
