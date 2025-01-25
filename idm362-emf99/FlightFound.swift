//
//  FlightFound.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct FlightFound: View {
    var body: some View {
        ZStack {
            AppBackground()
                ZStack(alignment: .top) {
                    FlightFoundModal()
                        .offset(y: 90)
                    FlightHero()
                        .offset(y: -180)
                }
            }
    }
}

#Preview {
    FlightFound()
}
