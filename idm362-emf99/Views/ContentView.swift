//
//  ContentView.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/14/25.
//

// ContentView.swift
import SwiftUI

struct ContentView: View {
    @State private var showFlightFind = false
    @State private var navigationPath = NavigationPath()

    init() {
        if UserDefaults.standard.bool(forKey: "LastScreenWasSchedule"),
           let flightNumber = UserDefaults.standard.string(forKey: "SelectedFlightNumber"),
           let prepTime = UserDefaults.standard.string(forKey: "LastPreparationTime"),
           let flight = selectedFlight(from: flightNumber) {
            _navigationPath = State(initialValue: NavigationPath(["Schedule_\(prepTime)_\(flightNumber)"]))
            _showFlightFind = State(initialValue: true)
        }
    }

    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                if !showFlightFind {
                    ZStack {
                        AppBackgroundOpen()
                        VStack {
                            Image("logo-primary")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.9)
                                .shadow(color: Color(red: 0.67, green: 0.75, blue: 0.44).opacity(0.1), radius: 17.5, x: 0, y: 10)
                                .padding(.all, 8.0)
                                .offset(y: 40)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .transition(.opacity)
                } else {
                    FlightFind(navigationPath: $navigationPath)
                        .navigationBarBackButtonHidden(true) // hide back button at root
                        .navigationDestination(for: Flight.self) { flight in
                            FlightFound(selectedFlight: flight, navigationPath: $navigationPath)
                        }
                        .navigationDestination(for: String.self) { value in
                            if value.starts(with: "GetReady_") {
                                let flightNumber = String(value.dropFirst(9))
                                if let flight = selectedFlight(from: flightNumber) {
                                    GetReady(selectedFlight: flight, navigationPath: $navigationPath)
                                }
                            } else if value.starts(with: "Schedule_") {
                                let parts = value.split(separator: "_", maxSplits: 2)
                                if parts.count == 3, let flight = selectedFlight(from: String(parts[2])) {
                                    Schedule(selectedFlight: flight, preparationTime: String(parts[1]), navigationPath: $navigationPath)
                                        .onAppear {
                                            UserDefaults.standard.set(true, forKey: "LastScreenWasSchedule")
                                            UserDefaults.standard.set(String(parts[1]), forKey: "LastPreparationTime")
                                        }
                                        .onDisappear {
                                            if navigationPath.isEmpty {
                                                UserDefaults.standard.set(false, forKey: "LastScreenWasSchedule")
                                            }
                                        }
                                }
                            }
                        }
                }
            }
            .animation(.easeInOut(duration: 0.5), value: showFlightFind)
        }
        .onAppear {
            if navigationPath.isEmpty {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        showFlightFind = true
                    }
                }
            }
        }
    }

    private func selectedFlight(from flightNumber: String) -> Flight? {
        sampleFlights.first { $0.flightNumber == flightNumber }
    }
}

#Preview {
    ContentView()
}
