//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Khan Nabeel Shahid on 24/04/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: WeatherData?
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView()
                        .task {
                            do {
                                weather = try await weatherManager
                                    .getCurrentWeather(
                                        latitude: location.latitude,
                                        longitude: location.longitude
                                    )
                            } catch {
                                print("Error getting weather: \(error)")
                            }
                        }
                }
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
        }
        .background(LinearGradient(colors: [Color("darkBlue"), Color("navyBlue"), Color("lightBlue")], startPoint: .leading, endPoint: .bottom))
        .preferredColorScheme(.dark)
        
    }
}

#Preview {
    ContentView()
}
