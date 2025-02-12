//
//  PackHero.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct PackHero: View {
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
                Image("dont-forget")
                    .offset(x: 0, y: -10)
                    .rotationEffect(Angle(degrees: -15))
                
                HStack {
                    // sticker L
                    Image("pack-smart2")
                        .offset(x: -90, y: -10)
                        .rotationEffect(Angle(degrees: -30))
                    // sticker R
                    Image("stay-org")
                        .offset(x: 55, y: -20)
                        .rotationEffect(Angle(degrees: 30))
                }
            }
        }
    }
}

#Preview {
    PackHero()
}
