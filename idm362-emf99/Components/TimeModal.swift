//
//  TimeModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct TimeModal: View {
    @State private var selectedHour: String = "0hr"
    @State private var selectedMins: String = "0m"
    @State private var isPressedDone = false
    @State private var isPressedX = false
    
    private let timeOptionsHour: [String] = [
        "0hr", "1hr", "2hr", "3hr", "4hr", "5hr", "6hr"
    ]
    
    private let timeOptionsMins: [String] = [
        "0m", "15m", "30m", "45m"
    ]
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            
            VStack(spacing: 20) {
                HStack {
                    // x btn
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
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
                Text("how long does it take you to get ready for the airport?")
                    .font(.rethink(fontStyle: .title3))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                
                // buttons
                VStack(spacing: 20) {
                    
                    // hours & minutes
                    HStack {
                        // hours Picker
                        ZStack {
                            Picker("Select Hours", selection: $selectedHour) {
                                ForEach(timeOptionsHour, id: \.self) { option in
                                    Text(option)
                                        .font(.rethink(fontStyle: .headline))
                                        .foregroundColor(Color("ButtonTextPurple"))
                                        .tag(option)
                                }
                            }
                            .pickerStyle(WheelPickerStyle())
                            .frame(width: 100, height: 100)
                            .clipped()
                            .background(Color("ButtonPurple"))
                            .cornerRadius(100)
                            .accentColor(Color("ButtonTextPurple"))
                        }

                        // minutes Picker
                        ZStack {
                            Picker("Select Minutes", selection: $selectedMins) {
                                ForEach(timeOptionsMins, id: \.self) { option in
                                    Text(option)
                                        .font(.rethink(fontStyle: .headline))
                                        .foregroundColor(Color("ButtonTextPurple"))
                                        .tag(option)
                                }
                            }
                            .pickerStyle(WheelPickerStyle())
                            .frame(width: 100, height: 100)
                            .clipped()
                            .background(Color("ButtonPurple"))
                            .cornerRadius(100)
                            .accentColor(Color("ButtonTextPurple"))
                        }
                    }
                    
                    // Done button
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
        .frame(width: 350, height: 250)
    }
}

#Preview {
    TimeModal()
}
