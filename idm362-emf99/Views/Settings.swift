//
//  Settings.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/10/25.
//

import SwiftUI

struct Settings: View {
    
    var body: some View {
        ZStack {
            AppBackground()
            VStack {
                ZStack(alignment: .top) {
                    SettingsModal()
                        .offset(y: 23)
                    FlightHero()
                        .offset(y: -180)
                }
            }
        }
    }
}

#Preview {
    Settings()
}
