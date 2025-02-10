//
//  Settings.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/10/25.
//

import SwiftUI

struct Settings: View {
    
    @EnvironmentObject var userData: UserData
    
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
                
                // display user selection at the bottom
                Text("user picked: \(userData.ndx)")
                    .font(.rethink(fontStyle: .caption))
                    .foregroundColor(Color("AppBG"))
                    .padding(.top, 10)
                    .offset(y: 230)
            }
        }
    }
}

#Preview {
    Settings()
        .environmentObject(UserData())
}
