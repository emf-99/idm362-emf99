//
//  FlightFind.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct FlightFind: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            AppBackground()
            ZStack(alignment: .top) {
                FlightFindModal()
                FlightHero()
                    .offset(y: -180)
            }
        }
    }
}

#Preview {
    FlightFind()
}
