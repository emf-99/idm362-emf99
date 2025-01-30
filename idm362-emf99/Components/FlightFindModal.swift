//
//  FlightFindModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct FlightFindModal: View {
    @State private var flightNumber = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            
            VStack(spacing: 20) {
                HStack {
                    // x btn
                    Button(action: {}) {
                        Image(systemName: "xmark")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                    .padding(.all, 10)
                    .background(Color("ButtonPurple"))
                    .cornerRadius(20)
                    .offset(x: 120)
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
                    TextField("flight number", text: $flightNumber)
                        .padding(.all, 10)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 4)
                        .textFieldStyle(PlainTextFieldStyle())
                        .font(.rethink(fontStyle: .headline))
                        .foregroundColor(Color("ButtonTextPurple"))
                        .background(Color("ButtonPurple"))
                        .cornerRadius(40)
                                 
                    Button(action: {}) {
                        Text("done")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextOrange"))
                            .padding(.all, 10)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 4)
                    .background(Color("ButtonOrange"))
                    .cornerRadius(40)
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
