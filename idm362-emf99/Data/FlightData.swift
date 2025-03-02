//
//  FlightData.swift
//  idm362-emf99
//
//  Created by ella fromherz on 2/21/25.
//

// sample flight data
import SwiftUI

struct Flight: Identifiable, Hashable {
    let id = UUID()
    let flightNumber: String
    let day: String
    let month: String
    let departureAirport: String
    let destinationAirport: String
    let departureTime: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Flight, rhs: Flight) -> Bool {
        lhs.id == rhs.id
    }
}

let sampleFlights: [Flight] = [
    Flight(flightNumber: "ABC1234", day: "15", month: "mar", departureAirport: "JFK", destinationAirport: "LAX", departureTime: "03:30pm"),
    Flight(flightNumber: "XYZ5678", day: "22", month: "jun", departureAirport: "ORD", destinationAirport: "MIA", departureTime: "09:15am"),
    Flight(flightNumber: "DEF9012", day: "10", month: "sept", departureAirport: "SFO", destinationAirport: "DFW", departureTime: "06:45pm"),
    Flight(flightNumber: "GHI3456", day: "05", month: "jan", departureAirport: "ATL", destinationAirport: "BOS", departureTime: "11:00am"),
    Flight(flightNumber: "JKL7890", day: "30", month: "dec", departureAirport: "SEA", destinationAirport: "DEN", departureTime: "08:20pm")
]
