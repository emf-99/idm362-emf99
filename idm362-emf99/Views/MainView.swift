//
//  MainView.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/10/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var userData = UserData()
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("home", systemImage: "airplane.circle.fill")
                }
                .foregroundColor(.blue)
            
            About()
                .tabItem {
                    Label("about", systemImage: "info.circle")
                }
                .foregroundColor(.gray)
            
            Settings()
                .tabItem {
                    Label("settings", systemImage: "gearshape")
                }
        }
        .tint(Color("AppBG"))
        .environmentObject(userData)
    }
}

#Preview {
    MainView()
        .environmentObject(UserData())
}
