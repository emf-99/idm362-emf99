//
//  AppBackgroundOpen.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct AppBackgroundOpen: View {
    var body: some View {
        GeometryReader { geometry in
            let screenHeight = geometry.size.height
            let topOffset: CGFloat = screenHeight < 700 ? -60 : 0
            let bottomOffset: CGFloat = screenHeight < 700 ? 60 : 0
            
            ZStack {
                //bg color
                Color("AppBackground")
                    .ignoresSafeArea()
                
                //cloud top
                VStack {
                    // cloud 1
                    HStack {
                        Image("cloud")
                            .offset(x: 270, y: -50)
                            .frame(width: 261, height: 163)
                        //safe travels
                        HStack {
                            ZStack {
                                Image("safe-travels2")
                                    .rotationEffect(Angle(degrees: -30))
                                    .frame(width: 115, height: 115)
                            }
                            .offset(x: -40, y: 40)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                    //cloud 2
                    HStack {
                        Image("cloud")
                            .offset(x: -150, y: -50)
                            .frame(width: 261, height: 163)
                        
                        //be notified
                        HStack {
                            ZStack() {
                                Image("be-notified1")
                                    .rotationEffect(Angle(degrees: -15))
                                    .frame(width: 50, height: 50)
                            }
                            .offset(x: -270, y: 30)
                            .frame(width: 10.0, height: 10.0)
                        }
                    }
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .offset(y: topOffset)
                
                //cloud bottom
                VStack {
                    //cloud 3
                    HStack {
                        Image("cloud")
                            .offset(x: 230, y: 30)
                            .frame(width: 261, height: 163)
                        
                        //pack smart
                        HStack {
                            ZStack() {
                                Image("pack-smart1")
                                    .frame(width: 100, height: 100)
                                    .rotationEffect(Angle(degrees: 30))
                            }
                            .offset(x: -100, y: 100)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                    // cloud 4
                    HStack {
                        Image("cloud")
                            .offset(x: -200, y: -10)
                            .frame(width: 261, height: 163)
                    }
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                .offset(y: bottomOffset)
            }
        }
    }
}

#Preview {
    AppBackgroundOpen()
}
