//
//  GetReady.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// GetReady.swift
import SwiftUI

struct GetReady: View {
    let selectedFlight: Flight?
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            AppBackground()
            ZStack(alignment: .top) {
                TimeModal(selectedFlight: selectedFlight)
                    .offset(y: 50)
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
    GetReady(selectedFlight: sampleFlights[0])
}
