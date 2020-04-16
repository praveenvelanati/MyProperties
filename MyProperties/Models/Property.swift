//
//  Property.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import Foundation

protocol PropertyType {
    var name: String { get }
    var description: String { get }
}

struct Book: PropertyType, Codable {
    var name: String
    var description: String
    var author: String
}

struct Phone: PropertyType, Codable {
    var name: String
    var description: String
    var os: OS
    
    enum OS: String, Codable {
        case android, ios, windows
    }
}

struct Car: PropertyType, Codable {
    var name: String
    var description: String
    var numOfSeats: Int
}


