//
//  NotifCheck.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct NotifCheck: View {
    var body: some View {
        ZStack {
            AppBackground()
            ZStack(alignment: .top) {
                NotifModal()
                    .offset(y: 23)
                FlightHero()
                    .offset(y: -180)
            }
        }
    }
}

#Preview {
    NotifCheck()
}
