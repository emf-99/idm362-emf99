//
//  Schedule.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct Schedule: View {
    @Environment(\.dismiss) private var dismiss

    private func spacing(for height: CGFloat) -> CGFloat {
        if height < 700 { return -70 }
        else if height < 839 { return -60 }
        else { return -60 }
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
                            .offset(y: -20)
                        ScheduleList()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss() // Go back to GetReady
                }) {
                    Image(systemName: "chevron.backward")
                        .font(.headline)
                        .foregroundColor(Color("ButtonTextOrange"))
                        .padding(.horizontal, 14)
                        .padding(.vertical, 10)
                        .background(Color("ButtonOrange"))
                        .cornerRadius(40)
                }
            }
        }
    }
}

#Preview {
    Schedule()
}
