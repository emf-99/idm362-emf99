//
//  FlightFoundModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct FlightFoundModal: View {
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
                HStack {
                    Text("is this your flight?")
                        .font(.title3)
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
                                .font(.caption)
                                .fontWeight(.light)
                                .foregroundColor(Color("TextColorLight"))
                            
                            HStack(spacing: 15) {
                                // flight date
                                VStack {
                                    Text("25")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("TextColorLight"))
                                    Text("october")
                                        .font(.caption)
                                        .fontWeight(.light)
                                        .foregroundColor(Color("TextColorLight"))
                                }
                                
                                // to and from airports
                                Text("BWI > LGA")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("TextColorLight"))
                                
                                // flight time
                                VStack {
                                    Text("departure time:")
                                        .font(.system(size: 8))
                                        .fontWeight(.light)
                                        .foregroundColor(Color("TextColorLight"))
                                        .lineLimit(2)
                                    
                                    Text("2:00pm")
                                        .fontWeight(.bold)
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
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ButtonTextPurple"))
                                .padding(.all, 10)
                        }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 4)
                        .background(Color("ButtonPurple"))
                        .cornerRadius(40)
                        
                        Button(action: {}) {
                            Text("yes")
                                .fontWeight(.semibold)
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
