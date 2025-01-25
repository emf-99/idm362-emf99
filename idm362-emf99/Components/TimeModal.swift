//
//  TimeModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct TimeModal: View {
    // select time
    @State private var selectedHour: String = "0hr"
    @State private var selectedMins: String = "0m"
    
    private let timeOptionsHour: [String] = [
        "0hr", "1hr","2hr", "3hr", "4hr", "5hr", "6hr"
    ]
    
    private let timeOptionsMins: [String] = [
        "0m",  "15m", "30m", "45m"
    ]
    
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
                Text("how long does it take you to get ready for the airport?")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                
                // buttons
                VStack(spacing: 20) {
                    
                    // hours
                    HStack {
                        Picker("Select Time", selection: $selectedHour) {
                            ForEach(timeOptionsHour, id: \.self) { option in Text(option).tag(option)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .frame(height: 40)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 4)
                        .background(Color("ButtonPurple"))
                        .foregroundColor(Color("ButtonTextPurple"))
                        .cornerRadius(40)
                        
                        // mins
                        Picker("Select Time", selection: $selectedMins) {
                            ForEach(timeOptionsMins, id: \.self) { option in Text(option).tag(option)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .frame(height: 40)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 4)
                        .background(Color("ButtonPurple"))
                        .foregroundColor(Color("ButtonTextPurple"))
                        .cornerRadius(40)
                    }
                    
                    
                    Button(action: {}) {
                        Text("done")
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
            .padding(.all, 30)
        }
        .frame(width: 350, height: 200)
    }
}

#Preview {
    TimeModal()
}
