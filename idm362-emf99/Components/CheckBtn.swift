//
//  CheckBtn.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// CheckBtn.swift
import SwiftUI

struct CheckBtn: View {
    @Binding var isSet: Bool {
        didSet {
            // Save the entire checklist state when any item changes
            if let currentStates = UserDefaults.standard.object(forKey: "ChecklistStates") as? [Bool] {
                var updatedStates = currentStates
                updatedStates[index] = isSet
                UserDefaults.standard.set(updatedStates, forKey: "ChecklistStates")
            }
        }
    }
    @State private var isBouncing: Bool = false
    let index: Int // Add index to identify which item in the array

    init(isSet: Binding<Bool>, index: Int) {
        _isSet = isSet
        self.index = index
    }

    var body: some View {
        Button {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0)) {
                isSet.toggle() // trigger didSet
                isBouncing.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    isBouncing.toggle()
                }
            }
        } label: {
            Label("CheckBtn", systemImage: isSet ? "checkmark.circle.fill" : "circle")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? Color("ButtonTextPurple") : Color("TextColor"))
                .scaleEffect(isBouncing ? 1.2 : 1.0)
        }
        .accessibilityLabel(isSet ? "Checked" : "Unchecked")
    }
}

#Preview {
    CheckBtn(isSet: .constant(true), index: 0)
}

