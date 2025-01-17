//
//  CirlceImageScout.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/17/25.
//

import SwiftUI


struct CircleImageScout: View {
    var body: some View {
        Image("scout")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.pink, lineWidth: 1)
            }
            .shadow(radius: 2)
    }
}


#Preview {
    CircleImageScout()
}
