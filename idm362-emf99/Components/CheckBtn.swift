//
//  CheckBtn.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct CheckBtn: View {
    @Binding var isSet: Bool
    
    @State private var isBouncing: Bool = false // Controls bounce effect
    
    var body: some View {
        Button {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0)) {
                isSet.toggle()
                isBouncing.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    isBouncing.toggle()
                }
            }
        } label: {
            Label("CheckBtn", systemImage: isSet ? "checkmark.circle.fill" : "circle")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? Color("ButtonTextPurple") : Color("TextColor"))
                .scaleEffect(isBouncing ? 1.2 : 1.0) // Bounce effect
        }
        .accessibilityLabel(isSet ? "Checked" : "Unchecked")
    }
}

#Preview {
    CheckBtn(isSet: .constant(true))
}

