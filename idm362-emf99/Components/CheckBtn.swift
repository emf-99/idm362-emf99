//
//  CheckBtn.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct CheckBtn: View {
    @Binding var isSet: Bool

        var body: some View {
            Button {
                isSet.toggle()
            } label: {
                Label("CheckBtn", systemImage: isSet ? "checkmark.circle.fill" : "circle")
                    .labelStyle(.iconOnly)
                    .foregroundStyle(isSet ? Color("ButtonTextPurple") : Color("TextColor"))
            }
        }
    }

#Preview {
            CheckBtn(isSet: .constant(true))
        }
