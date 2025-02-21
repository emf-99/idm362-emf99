//
//  FlightFindModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// FlightFindModal.swift
// FlightFindModal.swift

// FlightFindModal.swift
import SwiftUI

struct FlightFindModal: View {
    @State private var selectedFlight: Flight? = nil
    @State private var isPressedDone = false
    @State private var isPressedX = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            VStack(spacing: 20) {
                HStack {
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
                Text("select your flight!")
                    .font(.rethink(fontStyle: .title2))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                HStack(spacing: 20) {
                    Picker("Flight Number", selection: $selectedFlight) {
                        Text("choose flight ")
                            .font(.rethink(fontStyle: .caption))
                            .fontWeight(.regular)
                            .foregroundColor(Color("ButtonTextPurple"))
                            .padding(.horizontal, 4)
                            .tag(Flight?.none)
                        ForEach(sampleFlights) { flight in
                            Text(flight.flightNumber)
                                .font(.rethink(fontStyle: .headline))
                                .foregroundColor(Color("ButtonTextPurple"))
                                .tag(Flight?.some(flight))
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .font(.rethink(fontStyle: .headline)) // This styles the Picker's visible label/container
                    .foregroundColor(Color("ButtonTextPurple"))
                    .background(Color("ButtonPurple"))
                    .cornerRadius(40)
                    .accentColor(Color("ButtonTextPurple"))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 4)
                    .background(Color("ButtonPurple")) // Note: Double background; remove one if unintended
                    .cornerRadius(40)
                    .frame(height: 40)
                    NavigationLink(destination: FlightFound(selectedFlight: selectedFlight)) {
                        Text("done")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextOrange"))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color("ButtonOrange"))
                            .cornerRadius(40)
                            .scaleEffect(isPressedDone ? 0.85 : 1.0)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedDone.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedDone.toggle()
                        }
                    })
                    .disabled(selectedFlight == nil)
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
