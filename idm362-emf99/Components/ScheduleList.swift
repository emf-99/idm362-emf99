//
//  ScheduleList.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct ScheduleList: View {
    
    @State private var isChecked: Bool = false
    
    var body: some View {
        ZStack {
            // modal bg
            Rectangle()
                .fill(Color("ModalColor"))
                .cornerRadius(20)
            //text top
            VStack(spacing: 0.0) {
                Text("here's your travel plan!")
                    .font(.system(size: 20))
                    .foregroundColor(Color("TextColor"))
                    .padding()
                
                Image("line")
                    .padding(.bottom, 20)
                
                // flight info
                VStack(spacing: 10){
                    Text("flight number: 2EF36M3")
                        .font(.caption)
                        .fontWeight(.light)
                        .foregroundColor(Color("TextColor"))
                    
                    HStack(spacing: 40) {
                        // flight date
                        VStack {
                            Text("25")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color("TextColor"))
                            Text("october")
                                .font(.caption)
                                .fontWeight(.light)
                                .foregroundColor(Color("TextColor"))
                        }
                        
                        // to and from airports
                        Text("BWI > LGA")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("TextColor"))
                        
                        // flight time
                        VStack {
                            Text("departure time:")
                                .font(.system(size: 8))
                                .fontWeight(.light)
                                .foregroundColor(Color("TextColor"))
                                .lineLimit(2)
                            
                            Text("2:00pm")
                                .fontWeight(.bold)
                                .foregroundColor(Color("TextColor"))
                        }
                    }
                }
            }
            .padding(.bottom, 550.0)
            
            // checklist modal
            ZStack {
                Rectangle()
                    .fill(Color("ListColor"))
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 35.0) {
                    HStack(alignment: .top) {
                        CheckBtn(isSet: $isChecked)
                        Text("leave for BWI airport at 10:30am, 10am if you are parking there")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                    
                    HStack {
                        CheckBtn(isSet: $isChecked)
                        Text("arrive at security at 11:00am.  lines are longer on friday mornings")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                    
                    HStack {
                        CheckBtn(isSet: $isChecked)
                        Text("arrive at gate by 12:30pm")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                    
                    HStack {
                        CheckBtn(isSet: $isChecked)
                        Text("purchase any items you will use in flight at a nearby newsstand")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                    
                    HStack {
                        CheckBtn(isSet: $isChecked)
                        Text("board your flight at 1:30")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                    
                    HStack {
                        CheckBtn(isSet: $isChecked)
                        Text("enjoy!")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                    }
                }
                .padding(.horizontal, 30.0)
                
                
            }
            .frame(width: 300, height: 530)
            .offset(x: 0, y: 75)
            
            //stickers
            Image("safe-travels2")
                .offset(x: 140, y: -360)
            
            Image("be-notified1")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .offset(x: -150, y: -175)
            
            Image("pack-smart1")
                .offset(x: 50, y: 330)
        }
        .frame(width: 350, height: 720)
        .offset(x: 0, y: 20)
        
    }
}

#Preview {
    ScheduleList()
}
