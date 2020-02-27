//
//  WeatherData.swift
//  MyWeather
//
//  Created by Phi Hải on 2/27/20.
//  Copyright © 2020 Phi Hải. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
