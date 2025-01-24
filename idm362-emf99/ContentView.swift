//
//  ContentView.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AppBackgroundOpen()
            Image("logo-primary")
                .frame(width: 340.29382, height: 113.57661)
                .shadow(color: Color(red: 0.67, green: 0.75, blue: 0.44).opacity(0.1), radius: 17.5, x: 0, y: 10)

        }
    }
}


#Preview {
    ContentView()
}
