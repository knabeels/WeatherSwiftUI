//
//  WeatherData.swift
//  WeatherSwiftUI
//
//  Created by Khan Nabeel Shahid on 28/04/2025.
//

import Foundation
import CoreLocation

/// Here the data decode after receiving from API i.e., JSON Format
struct WeatherData: Codable {
    let coord: CoordinatesResponse, weather: [WeatherResponse], main: MainResponse, name: String, wind: WindResponse
}
    struct CoordinatesResponse: Codable {
        let lon, lat: Double
    }
    
    struct WeatherResponse: Codable {
        let id: Double, main, description, icon: String
    }
    
    struct MainResponse: Codable {
        let temp, feelsLike, tempMin, tempMax: Double
        let pressure, humidity: Int
        
        enum CodingKeys: String, CodingKey {
            case temp
            case feelsLike = "feels_like"
            case tempMin = "temp_min"
            case tempMax = "temp_max"
            case pressure
            case humidity
        }
    }
    
    struct WindResponse: Codable {
        let speed, deg: Double
    }

//extension WeatherData.MainResponse {
//    var feelsLike: Double { return feels_like }
//    var tempMin: Double { return temp_min }
//    var tempMax: Double { return temp_max }
//    
//}
