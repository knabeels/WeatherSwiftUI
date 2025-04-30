//
//  WelcomeView.swift
//  WeatherSwiftUI
//
//  Created by Khan Nabeel Shahid on 27/04/2025.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to Weather App").bold().font(.title)
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
                
            }
            .cornerRadius(40)
            .foregroundColor(.white)
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
