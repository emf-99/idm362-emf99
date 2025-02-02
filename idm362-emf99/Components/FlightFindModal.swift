//
//  FlightFindModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct FlightFindModal: View {
    @State private var flightNumber = ""
    @State private var isPressedDone = false
    @State private var isPressedX = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            
            VStack(spacing: 20) {
                HStack {
                    // x btn
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.2, blendDuration: 0)) {
                            isPressedX.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedX.toggle()
                        }
                    }) {
                        Image(systemName: "xmark")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                    .padding(.all, 10)
                    .background(Color("ButtonPurple"))
                    .cornerRadius(20)
                    .offset(x: 120)
                    .scaleEffect(isPressedX ? 0.95 : 1.0)
                }
                
                // text
                Text("enter that flight number!")
                    .font(.rethink(fontStyle: .title2))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                
                // buttons
                HStack(spacing: 20) {
                    ZStack {
                        TextField("", text: $flightNumber, prompt: Text("flight number").foregroundColor(Color("ButtonTextPurple").opacity(0.4)))
                            .padding(.all, 10)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 4)
                            .textFieldStyle(PlainTextFieldStyle())
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextPurple"))
                            .background(Color("ButtonPurple"))
                            .cornerRadius(40)
                            .accentColor(Color("ButtonTextPurple"))
                    }
                    .frame(height: 40)

                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedDone.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedDone.toggle()
                        }
                    }) {
                        Text("done")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextOrange"))
                            .padding(.all, 10)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 4)
                    .background(Color("ButtonOrange"))
                    .cornerRadius(40)
                    .scaleEffect(isPressedDone ? 0.85 : 1.0)
                }
            }
            .padding(.all, 30)
        }
        .frame(width: 350, height: 200)
    }
}

#Preview {
    FlightFindModal()
}
