//
//  Person.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import Foundation

struct Person {
    
    var name: String
    var properties: [Section<PropertyType>]
    
    struct Section<T> {
        var id: PropertyID
        var list: [T]
    }

    enum PropertyID: String {
        case books, cars, phones
    }
    
    
    // Test Data for dev
    static func getSectionData() -> [Section<PropertyType>] {
        let book1 = Book(name: "Java", description: "Advance Java books i bought", author: "Daniel")
        let book2 = Book(name: "Swift Pro", description: "Advanced concepts of swift", author: "Daniel")
        let book3 = Book(name: "Mobile Security", description: "Deep dive in to best practices of security in Mobile", author: "Daniel")
        let section1: Section<PropertyType> =  Section(id: .books, list: [book1, book2, book3])
        
        let car1 = Car(name: "Honda Civic", description: "My First car which gave me a lot of trouble", numOfSeats: 2)
        let car2 = Car(name: "Toyota Corolla", description: "My Second car which is good for it's money's worth", numOfSeats: 4)
        let section2: Section<PropertyType> = Section(id: .cars, list: [car1, car2])
        
        let phone1 = Phone(name: "Samsung", description: "My First Smartphone", os: .android)
        let phone2 = Phone(name: "Iphone 7 plus", description: "Red Phone which lasted long", os: .ios)
        let section3: Section<PropertyType> = Section(id: .phones, list: [phone1, phone2])
        return [section1, section2, section3]
    }


}
