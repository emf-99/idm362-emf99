//
//  NotifHero.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct NotifHero: View {
    var body: some View {
        ZStack {
            VStack {
                // logo
               Image("logo")
                    .resizable()
                        .scaledToFit()
                        .scaleEffect(0.5)
            }
            VStack {
                // sticker top
                Image("stay-org")
                    .offset(x: 0, y: -10)
                    .rotationEffect(Angle(degrees: -15))
                
                HStack {
                    // sticker L
                    Image("be-notified2")
                        .offset(x: -90, y: -10)
                        .rotationEffect(Angle(degrees: -30))
                    // sticker R
                    Image("dont-miss")
                        .offset(x: 55, y: -20)
                        .rotationEffect(Angle(degrees: 30))
                }
            }
        }
    }
}

#Preview {
    NotifHero()
}
