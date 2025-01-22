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
            Text(showingScout ? "Scout Fromherz" : "Ella Fromherz")
                .foregroundColor(.pink)
                    .font(.title)
                    .fontWeight(.thin)
                    .padding(.all, 10)
            
            if showingScout {
                CircleImageScout()
                    .padding(.all, 10)
            } else {
                CircleImageHeadshot()
                    .padding(.all, 10)

            }

            Button(action: {
                showingScout.toggle()
            }) {
                Text(showingScout ? "Show Ella →" : "Show Scout →")
                    .fontWeight(.light)
                Image(systemName: "pawprint.fill")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background(Color.pink)
                    .clipShape(Circle())
                    .shadow(radius: 2)
                    
            }
            .padding(.all, 10)
        }
        .padding(.all, 10)
    }
}


#Preview {
    ContentView()
}
