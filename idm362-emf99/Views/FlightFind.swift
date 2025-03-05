//
//  FlightFind.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// FlightFind.swift
import SwiftUI

struct FlightFind: View {
    @Binding var navigationPath: NavigationPath
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            AppBackground()
            ZStack(alignment: .top) {
                FlightFindModal(navigationPath: $navigationPath)
                FlightHero()
                    .offset(y: -180)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    FlightFind(navigationPath: .constant(NavigationPath()))
}
