//
//  ContentView.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/14/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        ZStack {
            AppBackgroundOpen()
            VStack {
                Image("logo-primary")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.9)
                    .shadow(color: Color(red: 0.67, green: 0.75, blue: 0.44).opacity(0.1), radius: 17.5, x: 0, y: 10)
                    .padding(.all, 8.0)
                    .offset(y: 40)
                
                
                // display user selection at the bottom
                Text("user picked: \(userData.ndx)")
                    .font(.rethink(fontStyle: .caption))
                    .foregroundColor(Color("AppBG"))
                    .padding(.top, 10)
                    .offset(y: 245)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

#Preview {
    ContentView()
        .environmentObject(UserData()) // Provide UserData for preview
}
