//
//  FlightFound.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// FlightFound.swift
import SwiftUI

struct FlightFound: View {
    let selectedFlight: Flight?
    @Binding var navigationPath: NavigationPath // Add this
    @Environment(\.dismiss) private var dismiss

    init(selectedFlight: Flight?, navigationPath: Binding<NavigationPath>) {
        self.selectedFlight = selectedFlight
        _navigationPath = navigationPath
    }

    var body: some View {
        ZStack {
            AppBackground()
            ZStack(alignment: .top) {
                FlightFoundModal(selectedFlight: selectedFlight, navigationPath: $navigationPath) // pass navigationPath
                    .offset(y: 90)
                FlightHero()
                    .offset(y: -180)
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.backward")
                        .font(.headline)
                        .foregroundColor(Color("ButtonTextOrange"))
                        .padding(.horizontal, 14)
                        .padding(.vertical, 10)
                        .background(Color("ButtonOrange"))
                        .cornerRadius(40)
                }
            }
        }
    }
}

#Preview {
    FlightFound(selectedFlight: sampleFlights[0], navigationPath: .constant(NavigationPath()))
}
