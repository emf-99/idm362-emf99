//
//  CircleImage.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/14/25.
//
import SwiftUI


struct CircleImageHeadshot: View {
    var body: some View {
        Image("headshot")
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 160)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.pink, lineWidth: 1)
            }
            .shadow(radius: 2)
    }
}


#Preview {
    CircleImageHeadshot()
}
