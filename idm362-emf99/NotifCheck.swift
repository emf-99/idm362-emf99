//
//  NotifCheck.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct NotifCheck: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AppBackground()
                ZStack(alignment: .top) {
                    NotifModal()
                        .offset(y: 23)
                    FlightHero()
                        .offset(y: -180)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

#Preview {
    NotifCheck()
}
