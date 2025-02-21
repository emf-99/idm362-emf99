//
//  ContentView.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showFlightFind = false

    var body: some View {
        NavigationStack {
            ZStack {
                if !showFlightFind {
                    // loading screen
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
                    
                    FlightFind()
                        .transition(.opacity)
                }
            }
            .animation(.easeInOut(duration: 0.5), value: showFlightFind)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    showFlightFind = true
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
