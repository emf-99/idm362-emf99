//
//  FlightErrorModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/2/25.
//

import SwiftUI

struct FlightErrorModal: View {
    @State private var isPressedTryAgain = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            
            VStack(spacing: 20) {
                // text
                Text("oops! that flight number doesn't seem right...")
                    .font(.rethink(fontStyle: .title2))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 20)
                
                // buttons
                HStack(spacing: 20) {
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedTryAgain.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedTryAgain.toggle()
                        }
                    }) {
                        Text("try again")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextOrange"))
                            .padding(.all, 10)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 4)
                    .background(Color("ButtonOrange"))
                    .cornerRadius(40)
                    .scaleEffect(isPressedTryAgain ? 0.85 : 1.0)
                }
            }
            .padding(.all, 30)
        }
        .frame(width: 350, height: 200)
    }
}

#Preview {
    FlightErrorModal()
}
