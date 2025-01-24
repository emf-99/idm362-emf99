//
//  ContentView.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScout = false

    var body: some View {
        VStack(alignment: .center) {
            Text("hello, world")
                .foregroundColor(.pink)
                    .font(.title)
                    .fontWeight(.thin)
                    .padding(.all, 10)
                    
            }
            .padding(.all, 10)
        }
    }



#Preview {
    ContentView()
}
