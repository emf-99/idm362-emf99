//
//  NotifModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct NotifModal: View {
    @State private var isPressedNo = false
    @State private var isPressedYes = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            
            VStack(spacing: 20) {
                // text
                Text("would you like to receive notifications for your schedule?")
                    .font(.rethink(fontStyle: .title3))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 30)
                
                // buttons
                HStack(spacing: 20) {
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedNo.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedNo.toggle()
                        }
                    }) {
                        Text("no")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextPurple"))
                            .padding(.all, 10)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 4)
                    .background(Color("ButtonPurple"))
                    .cornerRadius(40)
                    .scaleEffect(isPressedNo ? 0.85 : 1.0)
                    
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0)) {
                            isPressedYes.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedYes.toggle()
                        }
                    }) {
                        Text("yes")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("ButtonTextOrange"))
                            .padding(.all, 10)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 4)
                    .background(Color("ButtonOrange"))
                    .cornerRadius(40)
                    .scaleEffect(isPressedYes ? 0.85 : 1.0)
                }
            }
            .padding(.all, 30)
        }
        .frame(width: 350, height: 200)
    }
}

#Preview {
    NotifModal()
}
