//
//  About.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/10/25.
//

import SwiftUI

struct About: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        ZStack {
            AppBackground()
            VStack {
                ZStack(alignment: .top) {
                    AboutModal()
                        .offset(y: 80)
                    FlightHero()
                        .offset(y: -240)
                }
                
                // display user selection at the bottom
                Text("user picked: \(userData.ndx)")
                    .font(.rethink(fontStyle: .caption))
                    .foregroundColor(Color("AppBG"))
                    .padding(.top, 10)
                    .offset(y: 240)
            }
        }
    }
}

#Preview {
    About()
        .environmentObject(UserData())
}
