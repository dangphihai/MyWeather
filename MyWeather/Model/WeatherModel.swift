//
//  WeatherModel.swift
//  MyWeather
//
//  Created by Phi Hải on 2/27/20.
//  Copyright © 2020 Phi Hải. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let humidity: Double
    let minTemp: Double
    let maxTemp: Double
    
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    
    var humidityString: String {
        return String(format: "%.0f", humidity)
    }
    
    var minTempString: String {
        return String(format: "%.0f", minTemp)
    }
    
    var maxTempString: String {
        return String(format: "%.0f", maxTemp)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}

