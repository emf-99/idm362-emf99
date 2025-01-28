//
//  Schedule.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct Schedule: View {
    
    private func spacing(for height: CGFloat) -> CGFloat {
        if height < 700 {
            return -70
        } else if height < 839 {
            return -60
        } else {
            return -60
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            let dynamicSpacing = spacing(for: geometry.size.height)
            
            HStack(alignment: .bottom, spacing: 1.0) {
                ZStack {
                    AppBackground()
                        .ignoresSafeArea()
                    
                    VStack(alignment: .center, spacing: dynamicSpacing) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.25)
                        
                        ScheduleList()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
        }
    }
}

#Preview {
    Schedule()
}
