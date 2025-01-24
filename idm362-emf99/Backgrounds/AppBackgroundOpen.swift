//
//  AppBackgroundOpen.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct AppBackgroundOpen: View {
    var body: some View {
        ZStack {
            //bg color
            Color("AppBackground")
                .ignoresSafeArea()
            
            //cloud bg
            VStack {
                Image("cloud")
                    .padding(.leading, 400)
                    .frame(width: 261, height: 163)
                Image("cloud")
                    .padding(.trailing, 350)
                    .frame(width: 261, height: 163)
            }
            .padding(.bottom, 580)
            
            VStack {
                Image("cloud")
                    .padding(.leading, 350)
                    .frame(width: 261, height: 163)
                Image("cloud")
                    .padding(.trailing, 400)
                    .frame(width: 261, height: 163)
            }
            .padding(.top, 480)
            
            //sticker bg
            VStack {
                //safe travels
                HStack {
                    ZStack {
                        Image("safe-travels2")
                            .rotationEffect(Angle(degrees: -30))
                            .frame(width: 115, height: 115)
                        
                    }
                    .padding(.leading, 240)
                    .padding(.trailing, 0)
                    .padding(.top, -170)
                    .padding(.bottom, 320)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                //be notified
                HStack {
                    ZStack() {
                        Image("be-notified1")
                            .rotationEffect(Angle(degrees: -15))
                            .frame(width: 50, height: 50)
                        
                    }
                    .padding(.trailing, 260)
                    .padding(.bottom, 550)
                    .frame(width: 10.0, height: 10.0)
                }
                
                //pack smart
                HStack {
                    ZStack() {
                        Image("pack-smart1")
                            .frame(width: 100, height: 100)
                            .rotationEffect(Angle(degrees: 30))
                        
                    }
                    .padding(.leading, 170)
                    .padding(.bottom, -70)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding(0)
            .frame(width: 402, alignment: .topLeading)
        }
        }
        
    }

#Preview {
    AppBackgroundOpen()
}
