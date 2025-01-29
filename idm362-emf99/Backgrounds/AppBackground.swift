//
//  AppBackground.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct AppBackground: View {
    var body: some View {
    
            ZStack {
                //bg color
                Color("AppBackground")
                    .ignoresSafeArea()
                
                //cloud bg
                VStack(spacing: 0) {
                    
                    VStack {
                        Image("cloud")
                            .padding(.leading, 400)
                            .frame(width: 261, height: 163)
                        
                        Image("cloud")
                            .padding(.trailing, 350)
                            .frame(width: 261, height: 163)
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    
                    VStack {
                        Image("cloud")
                            .padding(.leading, 350)
                            .frame(width: 261, height: 163)
                        
                        Image("cloud")
                            .padding(.trailing, 400)
                            .frame(width: 261, height: 163)
                    }
                    .frame(maxHeight: .infinity, alignment: .bottom)
                }
                .opacity(0.2)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
    }

#Preview {
    AppBackground()
}
