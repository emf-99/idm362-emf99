//
//  FlightError.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/2/25.
//

import SwiftUI

struct FlightError: View {
    var body: some View {
        ZStack {
            AppBackground()
            ZStack(alignment: .top) {
                FlightErrorModal()
                    .offset(y: 20)
                FlightHero()
                    .offset(y: -180)
            }
        }
    }
}


#Preview {
    FlightError()
}
