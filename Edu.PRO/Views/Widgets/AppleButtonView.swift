//
//  AppleButtonView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 24/10/23.
//

import SwiftUI

struct AppleButtonView: View {
    public var height: Double
    public var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                Circle().frame(width: height+25).foregroundColor(.white).shadow(radius: 5)
                Image(systemName:"apple.logo").resizable().aspectRatio(contentMode: .fit).frame(height: height).foregroundColor(.black)
            }
        })
    }
}

#Preview {
    AppleButtonView(height: 25, action: {})
}
