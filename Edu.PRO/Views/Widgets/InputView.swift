//
//  InputView.swift
//  Edu.PRO
//
//  Created by João Victor de Souza Guedes on 03/10/23.
//

import SwiftUI

struct InputView: View {
    public var label: String
    @State public var value: Binding<String>
    @State public var isHidden: Bool = true
    @State public var safety: Bool
    @State public var colorActive: Color = Color.gray
    
    var body: some View {
        HStack {
            ZStack {
                HStack {
                    if safety {
                        Image(systemName: "lock")
                            .padding(.leading)
                            .foregroundStyle(Color.gray)
                        
                        if isHidden {
                            SecureField(label, text: value)
                            
                        } else {
                            TextField(label, text: value, onEditingChanged: { active in
                                if active {
                                    colorActive = Color.black
                                } else {
                                    colorActive = Color.gray
                                }
                            })
                                .autocorrectionDisabled(true)
                        }
                        
                        Button(action: {
                            isHidden.toggle()
                        }, label: {
                            Image(systemName: !isHidden ? "eye.slash" : "eye" )
                                .foregroundStyle(Color.gray)
                        })
                        .padding(.trailing)
                        
                    } else {
                        Image(systemName: "envelope")
                            .padding(.leading)
                            .foregroundStyle(Color.gray)
                        TextField(label, text: value, onEditingChanged: { active in
                            if active {
                                colorActive = Color.black
                            } else {
                                colorActive = Color.gray
                            }
                        })
                            .autocorrectionDisabled(true)
                    }
                }
                .padding(.top)
                .padding(.bottom)
                Capsule().stroke(colorActive, lineWidth: 1)
                
            }
            .frame(width: 350, height: 40)
        }
    }
}
