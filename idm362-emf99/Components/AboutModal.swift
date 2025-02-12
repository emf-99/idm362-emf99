//
//  AboutModal.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/10/25.
//

import SwiftUI

struct AboutModal: View {
    @State private var isPressedX = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            
            VStack(spacing: 20) {
                // text
                Text("about buddy")
                    .font(.rethink(fontStyle: .title2))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 32)
                
                Text("Meet Buddy – your ultimate airport timing companion designed for travelers who need a little extra help managing their time. Simply enter your flight details, specify your prep time, and enable notifications to receive a personalized, step-by-step checklist that ensures you’re ready to board on time. Buddy even offers customizable breakdowns of your tasks, so whether you prefer a high-level overview or detailed instructions, you can navigate the airport with confidence and ease.".lowercased())
                    .font(.rethink(fontStyle: .headline))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.all, 20)
                    .padding(.bottom, 32)
            }
        }
        .padding(.all, 30)
        .frame(width: 400, height: 200)
    }
}


#Preview {
    AboutModal()
}
