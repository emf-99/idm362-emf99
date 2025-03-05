//
//  FlightFindModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// FlightFindModal.swift
import SwiftUI

struct FlightFindModal: View {
    @Binding var navigationPath: NavigationPath
    @State private var selectedFlight: Flight?
    @State private var isPressedDone = false

    init(navigationPath: Binding<NavigationPath>) {
        _navigationPath = navigationPath
        // Load last selected flight from UserDefaults, or default to nil if cleared
        if let flightNumber = UserDefaults.standard.string(forKey: "SelectedFlightNumber"),
           let flight = sampleFlights.first(where: { $0.flightNumber == flightNumber }) {
            _selectedFlight = State(initialValue: flight)
        } else {
            _selectedFlight = State(initialValue: nil) // explicitly nil if no selection
        }
    }

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            VStack(spacing: 20) {
                Text("select your flight!")
                    .font(.rethink(fontStyle: .title2))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 20)
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
                    .font(.rethink(fontStyle: .headline))
                    .foregroundColor(Color("ButtonTextPurple"))
                    .background(Color("ButtonPurple"))
                    .cornerRadius(40)
                    .accentColor(Color("ButtonTextPurple"))
                    .padding(.vertical, 4)
                    .padding(.horizontal, 4)
                    .background(Color("ButtonPurple"))
                    .cornerRadius(40)
                    .frame(height: 40)
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedDone.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedDone.toggle()
                            if let flight = selectedFlight {
                                UserDefaults.standard.set(flight.flightNumber, forKey: "SelectedFlightNumber")
                                navigationPath.append(flight)
                            }
                        }
                    }) {
                        Text("done")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextOrange"))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color("ButtonOrange"))
                            .cornerRadius(40)
                            .scaleEffect(isPressedDone ? 0.85 : 1.0)
                    }
                    .disabled(selectedFlight == nil)
                }
            }
            .padding(.all, 30)
        }
        .frame(width: 350, height: 200)
        .onChange(of: navigationPath) { newPath in
            // reset selectedFlight if navigation stack is cleared
            if newPath.isEmpty && UserDefaults.standard.string(forKey: "SelectedFlightNumber") == nil {
                selectedFlight = nil
            }
        }
    }
}

#Preview {
    FlightFindModal(navigationPath: .constant(NavigationPath()))
}
