//
//  Schedule.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//                    .offset(x: -geometry.size.height / 2 + 70, y: -geometry.size.height / 2 + 60)

// Schedule.swift
import SwiftUI

struct Schedule: View {
    let selectedFlight: Flight?
    let preparationTime: String
    @Binding var navigationPath: NavigationPath
    @Environment(\.dismiss) private var dismiss
    @State private var isPressedX = false

    init(selectedFlight: Flight?, preparationTime: String, navigationPath: Binding<NavigationPath>) {
        self.selectedFlight = selectedFlight
        self.preparationTime = preparationTime
        _navigationPath = navigationPath
    }

    private func spacing(for height: CGFloat) -> CGFloat {
        if height < 700 { return -70 }
        else if height < 839 { return -60 }
        else { return -60 }
    }

    var body: some View {
        GeometryReader { geometry in
            let dynamicSpacing = spacing(for: geometry.size.height)
            ZStack {
                AppBackground()
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: dynamicSpacing) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.25)
                        .offset(y: -15)
                    ScheduleList(selectedFlight: selectedFlight, preparationTime: preparationTime, navigationPath: $navigationPath)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.2, blendDuration: 0)) {
                            isPressedX.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isPressedX.toggle()
                            UserDefaults.standard.removeObject(forKey: "SelectedFlightNumber") // Clear selected flight
                            UserDefaults.standard.removeObject(forKey: "ChecklistStates")
                            UserDefaults.standard.set(false, forKey: "LastScreenWasSchedule")
                            navigationPath.removeLast(navigationPath.count) // Reset to root
                        }
                    }) {
                        Image(systemName: "xmark")
                            .font(.headline)
                            .foregroundColor(Color("TextColor"))
                            .padding(.all, 10)
                            .background(Color("ButtonPurple"))
                            .cornerRadius(20)
                    }
                    .scaleEffect(isPressedX ? 0.95 : 1.0)
                    .padding(.trailing, 20)
                    .offset(x: -geometry.size.height / 2 + 70, y: -geometry.size.height / 2 + 60)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.backward")
                        .font(.headline)
                        .foregroundColor(Color("ButtonTextOrange"))
                        .padding(.horizontal, 14)
                        .padding(.vertical, 10)
                        .background(Color("ButtonOrange"))
                        .cornerRadius(40)
                }
            }
        }
    }
}

#Preview {
    Schedule(selectedFlight: sampleFlights[0], preparationTime: "2hr 30m", navigationPath: .constant(NavigationPath()))
}
