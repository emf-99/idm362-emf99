//
//  FlightFoundModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct FlightFoundModal: View {
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
                HStack {
                    Text("is this your flight?")
                        .font(.rethink(fontStyle: .title3))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("TextColor"))
                        .fontWeight(.bold)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
                HStack {
                    ZStack {
                        Image("ticket")
                            .rotationEffect(Angle(degrees: 5))
                        
                        //flight info
                        VStack(spacing: 10){
                            Text("flight number: 2EF36M3")
                                .font(.rethink(fontStyle: .caption))
                                .fontWeight(.light)
                                .foregroundColor(Color("TextColorLight"))
                            
                            HStack(spacing: 15) {
                                // flight date
                                VStack {
                                    Text("25")
                                        .font(.rethink(fontStyle: .title2))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("TextColorLight"))
                                    Text("october")
                                        .font(.rethink(fontStyle: .caption))
                                        .fontWeight(.light)
                                        .foregroundColor(Color("TextColorLight"))
                                }
                                
                                // to and from airports
                                Text("BWI > LGA")
                                    .font(.rethink(fontStyle: .headline))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("TextColorLight"))
                                
                                // flight time
                                VStack {
                                    Text("departure time:")
                                        .font(.rethink(fontStyle: .caption2))
                                        .fontWeight(.light)
                                        .foregroundColor(Color("TextColorLight"))
                                        .lineLimit(2)
                                    
                                    Text("2:00pm")
                                        .font(.rethink(fontStyle: .headline))
                                        .foregroundColor(Color("TextColorLight"))
                                }
                            }
                        }
                        .rotationEffect(Angle(degrees: 5))
                        .offset(x: 20, y: 0)
                        
                    }
                }
                
                // buttons
                HStack {
                    HStack(spacing: 20) {
                        Button(action: {}) {
                            Text("no")
                                .font(.rethink(fontStyle: .headline))
                                .foregroundColor(Color("ButtonTextPurple"))
                                .padding(.all, 10)
                        }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 4)
                        .background(Color("ButtonPurple"))
                        .cornerRadius(40)
                        
                        Button(action: {}) {
                            Text("yes")
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
            }
            .padding(.vertical, 30)
            .padding(.horizontal, 10)
        }
        .frame(width: 350, height: 200)
    }
}

#Preview {
    FlightFoundModal()
}
