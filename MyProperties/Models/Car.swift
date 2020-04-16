//
//  Car.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import Foundation

struct Car: PropertyType, Codable {
    var name: String
    var description: String
    var numOfSeats: Int
    
    static func getCars() -> [Car]? {
        guard let carsURL = Bundle.main.url(forResource: "Cars", withExtension: "plist") else {
            return nil
        }
        return carsURL.content(type: Car.self)
    }
}

