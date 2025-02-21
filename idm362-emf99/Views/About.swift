//
//  About.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/10/25.
//

import SwiftUI

struct About: View {
    
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
            }
        }
    }
}

#Preview {
    About()
}
