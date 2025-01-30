//
//  ChecklistItem.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/30/25.
//


import SwiftUI

struct ChecklistItem: View {
    @Binding var isChecked: Bool
    let text: String
    
    var body: some View {
        HStack(alignment: .top) {
            CheckBtn(isSet: $isChecked)
            
            Text(text)
                .foregroundColor(Color("TextColor"))
                .font(.rethink(fontStyle: .headline))
                .strikethrough(isChecked, color: .gray)
                .animation(.easeInOut(duration: 0.2), value: isChecked)
                .accessibilityLabel(text)
        }
    }
}

#Preview {
    ChecklistItem(isChecked: .constant(false), text: "Leave for BWI at 10:30 AM")
}

