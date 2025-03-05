//
//  FlightFoundModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// FlightFoundModal.swift
import SwiftUI

struct FlightFoundModal: View {
    let selectedFlight: Flight?
    @Binding var navigationPath: NavigationPath
    @Environment(\.dismiss) private var dismiss
    @State private var isPressedYes = false
    @State private var isPressedNo = false

    init(selectedFlight: Flight?, navigationPath: Binding<NavigationPath>) {
        self.selectedFlight = selectedFlight
        _navigationPath = navigationPath
    }

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            VStack(spacing: 20) {
                HStack {
                    Text("is this your flight?")
                        .font(.rethink(fontStyle: .title3))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("TextColor"))
                        .fontWeight(.bold)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.top, 20)
                HStack {
                    ZStack {
                        Image("ticket")
                            .rotationEffect(Angle(degrees: 5))
                        if let flight = selectedFlight {
                            VStack(spacing: 10) {
                                Text("flight number: \(flight.flightNumber)")
                                    .font(.rethink(fontStyle: .caption))
                                    .fontWeight(.light)
                                    .foregroundColor(Color("TextColorLight"))
                                HStack(spacing: 15) {
                                    VStack {
                                        Text(flight.day)
                                            .font(.rethink(fontStyle: .title2))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("TextColorLight"))
                                        Text(flight.month)
                                            .font(.rethink(fontStyle: .caption))
                                            .fontWeight(.light)
                                            .foregroundColor(Color("TextColorLight"))
                                    }
                                    Text("\(flight.departureAirport) > \(flight.destinationAirport)")
                                        .font(.rethink(fontStyle: .headline))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("TextColorLight"))
                                    VStack {
                                        Text("departure time:")
                                            .font(.rethink(fontStyle: .caption2))
                                            .fontWeight(.light)
                                            .foregroundColor(Color("TextColorLight"))
                                            .lineLimit(2)
                                        Text(flight.departureTime)
                                            .font(.rethink(fontStyle: .headline))
                                            .foregroundColor(Color("TextColorLight"))
                                    }
                                }
                            }
                            .rotationEffect(Angle(degrees: 5))
                            .offset(x: 20, y: 0)
                        }
                    }
                }
                HStack(spacing: 20) {
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedNo.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedNo.toggle()
                            dismiss()
                        }
                    }) {
                        Text("no")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextPurple"))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color("ButtonPurple"))
                            .cornerRadius(40)
                            .scaleEffect(isPressedNo ? 0.85 : 1.0)
                    }
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedYes.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedYes.toggle()
                            if let flight = selectedFlight {
                                navigationPath.append("GetReady_\(flight.flightNumber)") // unique identifier for GetReady
                            }
                        }
                    }) {
                        Text("yes")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextOrange"))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color("ButtonOrange"))
                            .cornerRadius(40)
                            .scaleEffect(isPressedYes ? 0.85 : 1.0)
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
    FlightFoundModal(selectedFlight: sampleFlights[0], navigationPath: .constant(NavigationPath()))
}
