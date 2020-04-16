//
//  Phone.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import Foundation

struct Phone: PropertyType, Codable {
    var name: String
    var description: String
    var os: OS
    
    enum OS: String, Codable {
        case android, ios, windows
    }
    
    static func getPhones() -> [Phone]? {
        guard let phonesURL = Bundle.main.url(forResource: "Phones", withExtension: "plist") else {
            return nil
        }
        return phonesURL.content(type: Phone.self)
    }
}
