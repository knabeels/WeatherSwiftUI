//
//  WeatherRow.swift
//  WeatherSwiftUI
//
//  Created by Khan Nabeel Shahid on 29/04/2025.
//

import SwiftUI

struct WeatherRow: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack (spacing: 20){
            Image(systemName: logo)
                .font(.title2)
                .frame(width: 30, height: 30)
                .padding()
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.888))
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(name).font(.caption)
                
                Text(value).bold()
                .font(.title)
            }
        }
    }
}

#Preview {
    WeatherRow(logo: "thermometer", name: "Feels like", value: "8˚")
}
