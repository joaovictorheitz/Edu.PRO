//
//  OrContinueWithView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 24/10/23.
//

import SwiftUI

struct OrContinueWithView: View {
    var body: some View {
        ZStack {
            VStack (spacing: 25) {
                HStack {
                    Text("Ou continue com").font(Font.custom("Mulish-Bold", size: 15)).opacity(0.8)
                }
                HStack (spacing: 60) {
                    GoogleButtonView(size: 21, action: {
                        print("Google Button pressed!")
                    })
                    
                    AppleButtonView(height: 25, action: {
                        print("Apple Button pressed!")
                    })
                }
            }
        }
    }
}

#Preview {
    OrContinueWithView()
}
