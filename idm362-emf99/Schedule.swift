//
//  Schedule.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct Schedule: View {
    var body: some View {
        ZStack {
            AppBackground()
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(1)
                    ScheduleList()
                        .offset(y: -20)
                }
            }
    }
}

#Preview {
    Schedule()
}
