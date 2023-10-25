//
//  GoogleButtonView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 24/10/23.
//

import SwiftUI

struct GoogleButtonView: View {
    public var size: Double
    public var action: () -> Void
    
    var body: some View {
        ZStack {
            Button(action: action, label: {
                ZStack {
                    Circle().frame(width: size+29).foregroundColor(.white).shadow(radius: 5)
                    Image("google_icon").resizable()
                        .frame(width: size, height: size)
                }
            })
        }
    }
}

#Preview {
    GoogleButtonView(size: 21, action: {})
}
