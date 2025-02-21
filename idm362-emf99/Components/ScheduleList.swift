//
//  ScheduleList.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

// ScheduleList.swift
// ScheduleList.swift

// ScheduleList.swift
import SwiftUI

struct ScheduleList: View {
    let selectedFlight: Flight?
    let preparationTime: String
    @State private var checkedStates: [Bool] = Array(repeating: false, count: 6)

    let baseWidth: CGFloat = 350
    let baseHeight: CGFloat = 720

    // Function to calculate time based on departure time and offset
    private func calculateTime(departureTime: String, subtractMinutes: Int) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mma" // e.g., "03:30pm"
        guard let departureDate = formatter.date(from: departureTime) else { return "N/A" }

        if let adjustedDate = Calendar.current.date(byAdding: .minute, value: -subtractMinutes, to: departureDate) {
            return formatter.string(from: adjustedDate)
        }
        return "N/A"
    }

    // Calculate preparation time in minutes
    private func preparationTimeInMinutes(_ preparationTime: String) -> Int {
        let prepComponents = preparationTime.split(separator: " ")
        var totalMinutes: Int = 0
        for component in prepComponents {
            if component.hasSuffix("hr"), let hours = Int(component.dropLast(2)) {
                totalMinutes += hours * 60
            } else if component.hasSuffix("m"), let minutes = Int(component.dropLast(1)) {
                totalMinutes += minutes
            }
        }
        return totalMinutes
    }

    var body: some View {
        GeometryReader { geometry in
            let scaleBasedOnDevice = min(geometry.size.width / baseWidth, geometry.size.height / baseHeight)
            let forcedShrinkFactor: CGFloat = 0.8
            let forcedGrowFactor: CGFloat = 1.5
            let minScale: CGFloat = 0.8
            let maxScale: CGFloat = 1
            let unboundedScale = scaleBasedOnDevice < 1 ? (scaleBasedOnDevice * forcedShrinkFactor) : (scaleBasedOnDevice * forcedGrowFactor)
            let finalScale = min(max(unboundedScale, minScale), maxScale)

            HStack(alignment: .center) {
                ZStack {
                    Rectangle()
                        .fill(Color("ModalColor"))
                        .cornerRadius(20)
                    VStack(spacing: 0.0) {
                        Text("here's your travel plan!")
                            .font(.rethink(fontStyle: .headline))
                            .foregroundColor(Color("TextColor"))
                            .padding()
                        Image("line")
                            .padding(.bottom, 20)
                        if let flight = selectedFlight {
                            VStack(spacing: 10) {
                                Text("flight number: \(flight.flightNumber)")
                                    .font(.rethink(fontStyle: .caption))
                                    .fontWeight(.light)
                                    .foregroundColor(Color("TextColor"))
                                HStack(spacing: 40) {
                                    VStack {
                                        Text(flight.day)
                                            .font(.rethink(fontStyle: .title2))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("TextColor"))
                                        Text(flight.month)
                                            .font(.rethink(fontStyle: .caption))
                                            .fontWeight(.light)
                                            .foregroundColor(Color("TextColor"))
                                    }
                                    Text("\(flight.departureAirport) > \(flight.destinationAirport)")
                                        .font(.rethink(fontStyle: .title3))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("TextColor"))
                                    VStack {
                                        Text("departure time:")
                                            .font(.rethink(fontStyle: .caption2))
                                            .fontWeight(.light)
                                            .foregroundColor(Color("TextColor"))
                                            .lineLimit(2)
                                        Text(flight.departureTime)
                                            .font(.rethink(fontStyle: .title3))
                                            .foregroundColor(Color("TextColor"))
                                    }
                                }
                            }
                        }
                    }
                    .padding(.bottom, baseHeight * 0.76)
                    ZStack {
                        Rectangle()
                            .fill(Color("ListColor"))
                            .cornerRadius(20)
                        if let flight = selectedFlight {
                            let prepMinutes = preparationTimeInMinutes(preparationTime)
                            let getReadyTime = calculateTime(departureTime: flight.departureTime, subtractMinutes: prepMinutes + 120) // Prep + 2hr
                            let leaveTime = calculateTime(departureTime: flight.departureTime, subtractMinutes: 120) // 2hr
                            let gateTime = calculateTime(departureTime: flight.departureTime, subtractMinutes: 60) // 1hr
                            let boardTime = calculateTime(departureTime: flight.departureTime, subtractMinutes: 30) // 30min
                            
                            VStack(alignment: .leading, spacing: 35.0) {
                                ChecklistItem(isChecked: $checkedStates[0], text: "get ready for flight \(flight.flightNumber) at \(getReadyTime)")
                                ChecklistItem(isChecked: $checkedStates[1], text: "leave for \(flight.departureAirport) at \(leaveTime)")
                                ChecklistItem(isChecked: $checkedStates[2], text: "arrive at your gate by \(gateTime)")
                                ChecklistItem(isChecked: $checkedStates[3], text: "purchase any needed in-flight items at a nearby newsstand")
                                ChecklistItem(isChecked: $checkedStates[4], text: "board your flight at \(boardTime)")
                                ChecklistItem(isChecked: $checkedStates[5], text: "safe travels!")
                            }
                            .padding(.horizontal, 30.0)
                        }
                    }
                    .frame(width: 300, height: 530)
                    .offset(x: 0, y: 75)
                    Image("safe-travels2")
                        .offset(x: baseWidth * 0.4, y: baseHeight * -0.5)
                    Image("be-notified1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .offset(x: baseWidth * -0.43, y: baseHeight * -0.24)
                    Image("pack-smart1")
                        .offset(x: baseWidth * 0.14, y: baseHeight * 0.4583)
                }
                .frame(width: baseWidth, height: baseHeight)
                .scaleEffect(finalScale)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 1.85)
            }
        }
    }
}

#Preview {
    ScheduleList(selectedFlight: sampleFlights[0], preparationTime: "2hr 30m")
}
