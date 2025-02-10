//
//  GetReady.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct GetReady: View {
    var body: some View {
        ZStack {
            AppBackground()
            ZStack(alignment: .top) {
                TimeModal()
                    .offset(y: 50)
                FlightHero()
                    .offset(y: -180)
            }
        }
    }
}

#Preview {
    GetReady()
}
