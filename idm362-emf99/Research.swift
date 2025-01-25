//
//  Research.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/24/25.
//

import SwiftUI

struct Research: View {
    var body: some View {
        
        ScrollView {
            ZStack {
                
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("Research...")
                        .font(.title)
                        .padding(20)
                        .foregroundColor(Color("ResearchText"))
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            VStack(alignment: .leading) {
                                Image("logo")
                                
                                Text("Buddy is an app designed to help users with poor time management arrive at the airport on time. Users enter their flight number, confirm their flight, specify how much time they need to get ready, and enable notifications. The app generates a personalized, time-based checklist to guide users on where they need to be and when, with timely reminders to keep them on track. For example, if a user’s flight departs at 12 PM and they need 1 hour to prepare, Buddy will notify them to leave for the airport at 9:30 AM, ensuring a stress-free travel experience.")
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 30)
                            }
                            VStack(alignment: .leading, spacing: 10.0) {
                                Text("How Buddy Is Different")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("ResearchText"))
                                
                                Text("Personalized Time Management:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Unlike other apps, Buddy focuses specifically on helping users manage their time effectively with flight-centric checklists and reminders tailored to their individual schedules.")
                                    .foregroundColor(Color("ResearchText"))
                                
                                Text("Simplified Process:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Users only need to input their flight number and preparation time, making it quick and easy to set up compared to apps with complex interfaces and features.")
                                    .foregroundColor(Color("ResearchText"))
                                
                                Text("Proactive Notifications:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Buddy sends actionable notifications that guide users step-by-step, such as when to start packing, leave for the airport, or check-in.")
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 30)
                                
                                Text("Improvements Over Other Apps")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("ResearchText"))
                                
                                Text("FlightAware:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Improvement: Buddy eliminates overwhelming aviation data and focuses solely on what the user needs to do to get to the airport on time.")
                                    .foregroundColor(Color("ResearchText"))
                                Text("Difference: Buddy doesn’t track flights in real time but uses flight information to create a user-specific travel plan.")
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 10)
                                
                                Text("MiFlight:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Improvement: Buddy does not rely on crowdsourced data, which can be unreliable. Instead, it uses personal input to generate an accurate and customized schedule.")
                                    .foregroundColor(Color("ResearchText"))
                                Text("Difference: Buddy offers proactive time-management features, whereas MiFlight focuses only on security wait times.")
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 10)
                                
                                Text("Airport Transit Guide:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Improvement: While Airport Transit Guide is informational, Buddy simplifies planning by automating reminders and eliminating the need to browse details.")
                                    .foregroundColor(Color("ResearchText"))
                                Text("Difference: Buddy isn’t about learning airport logistics but ensuring users get there on time with ease.")
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 10)
                                
                                
                                Text("App in the Air:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Improvement: Buddy prioritizes helping users plan their time rather than consolidating flight and airline data.")
                                    .foregroundColor(Color("ResearchText"))
                                Text("Difference: App in the Air supports frequent flyers, while Buddy serves as a tool for everyday travelers who struggle with time management.")
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 10)
                                
                                Text("Entrain:")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                Text("Improvement: Buddy doesn’t focus on adjusting circadian rhythms or jet lag but ensures users stick to a pre-flight schedule, avoiding last-minute stress.")
                                    .foregroundColor(Color("ResearchText"))
                                Text("Entrain addresses post-travel concerns, whereas Buddy is pre-travel oriented.")
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 30)
                                
                                Text("Buddy fills a gap left by other travel apps by addressing a specific problem: poor time management before a flight. While single-functional, its simplicity, focus on actionable reminders, and ease of use make it indispensable for users who need structure and guidance to arrive at the airport on time, stress-free.")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("ResearchText"))
                                    .padding(.bottom, 40)
                            }
                            
                        }
                        .padding(.bottom, 60.0)
                        
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("FlightAware")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Real-time flight tracking and customizable flight status push alerts and notifications. You can check flight statuses by airline, airport and specific flight.")
                                .font(.body)
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Pros:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Real-time flight tracking is accurate and reliable.Customizable push alerts keep you updated on delays or changes. Can track flights by airline, airport, and specific flight number. Supports both commercial and private flights.")
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Cons:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Free version has limited features; requires a subscription for advanced features like historical data and advanced alerts. May overwhelm casual users with detailed aviation data they don't need.")
                                .foregroundColor(Color("ResearchText"))
                        }
                        
                    }
                    .padding(20)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("MiFlight")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ResearchText"))
                            Text("With MiFlight, you can check out estimates of how long you’ll be standing in the security line. It offers info for 75 airports, and is based entirely on crowdsourced information.")
                                .font(.body)
                                .foregroundColor(Color("ResearchText"))
                        }
                        
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Pros:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Provides crowd-sourced security line wait times, which can help you plan ahead. Covers over 75 airports worldwide, useful for frequent travelers. Lightweight app with a simple interface.")
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Cons:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Relies on user-generated data, which may not always be accurate or up-to-date.Limited airport coverage compared to global options.Security wait times may fluctuate quickly, reducing reliability.")
                                .foregroundColor(Color("ResearchText"))
                        }
                    }
                    .padding(20)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Airport Transit Guide")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ResearchText"))
                            Text("This app provides all kinds of insider details about how to get around at international airports. It will guide you through minute details of taxi services, public transportation, and terminal features at airports. The app features intel you’d only learn from experience, like which taxi services are most reliable in a given city, or the unspoken rules of a local subway system. It’s not something you’d need in a familiar place, but it’s great to have in your back pocket in a brand new city where you might not speak the language.")
                                .font(.body)
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Pros:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Offers insider knowledge on how to navigate international airports. Includes details about taxi services, public transportation, and terminal layouts. Great for first-time visitors to a city or country, especially with language barriers. Saves time by providing practical tips specific to each location.")
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Cons:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Not useful for travelers already familiar with an airport or city. Data may become outdated without regular updates. Heavily focused on logistics, with limited integration of other travel tools.")
                                .foregroundColor(Color("ResearchText"))
                        }
                    }
                    .padding(20)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("App in the Air")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ResearchText"))
                            Text("App in the Air helps travelers simplify their travel journey by keeping all your flight information across all airlines in one place. Departure date, time, airport terminal, gate, and the type of aircraft can be accessed in one app. You are even able to keep track of all your boarding passes and airline alliances and rewards.")
                                .font(.body)
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Pros:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Consolidates flight information across all airlines in one place. Tracks airline alliances and rewards, great for frequent flyers. Stores boarding passes for convenience. Includes offline access to flight itineraries and airport maps.")
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Cons:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Some advanced features require a subscription. Doesn’t provide real-time updates as detailed as FlightAware. Focused primarily on flights, with less emphasis on other parts of the travel experience.")
                                .foregroundColor(Color("ResearchText"))
                        }
                    }
                    .padding(20)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Entrain")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Developed by University of Michigan researchers, Entrain keeps jet lag at bay by mapping out your sleep schedule according to your body’s circadian rhythms. It relies on your reported light data to recommend the best sleeping and waking hours for you in your new time zone. This helps your biological rhythms kick back into gear, minimizing your jet lag. For the app to work, you have to enter the following data correctly: your current time zone, your destination’s time zone, and the brightest light you can tolerate during your trip. Enjoy the jet ride more and lag a little less")
                                .font(.body)
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Pros:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Scientifically backed to help adjust to new time zones and reduce jet lag. Personalized sleep schedules based on circadian rhythms. Simple user interface focusing on one key problem for travelers. Encourages healthier habits during travel.")
                                .foregroundColor(Color("ResearchText"))
                        }
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("Cons:")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("ResearchText"))
                            Text("Requires accurate data entry for optimal results, which may be a hassle for users. Not effective for short trips where adjusting to a new time zone isn't feasible. Limited to jet lag solutions, so it’s not a multi-functional travel app.")
                                .foregroundColor(Color("ResearchText"))
                        }
                    }
                    .padding(20)
                    
                }
            }
        }
    }
}

#Preview {
    Research()
}
