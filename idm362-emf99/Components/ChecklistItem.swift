//
//  ChecklistItem.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/30/25.
//

// ChecklistItem.swift
import SwiftUI

struct ChecklistItem: View {
    @Binding var isChecked: Bool
    let text: String
    let index: Int // add index

    init(isChecked: Binding<Bool>, text: String, index: Int) {
        _isChecked = isChecked
        self.text = text
        self.index = index
    }

    var body: some View {
        HStack(alignment: .top) {
            CheckBtn(isSet: $isChecked, index: index) // pass index
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
    ChecklistItem(isChecked: .constant(false), text: "leave for BWI at 10:30 AM", index: 0)
}
