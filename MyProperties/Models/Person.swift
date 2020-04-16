//
//  Person.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import Foundation

struct Person {
    
    let name: String
    var properties: [Section]
    
    struct Section {
        var id: PropertyID
        var list: [PropertyType]
    }

    enum PropertyID: String {
        case books, cars, phones
    }
    
    // Test Data for dev
    static func getSectionData() -> [Section] {
        var sections: [Section] = []
        if let books = Book.getBooks() {
            let bookSection =  Section(id: .books, list: books)
            sections.append(bookSection)
        }
        if let cars = Car.getCars() {
            let carSection = Section(id: .cars, list: cars)
            sections.append(carSection)
        }
        if let phones = Phone.getPhones() {
            let phoneSection = Section(id: .phones, list: phones)
            sections.append(phoneSection)
        }
        return sections
    }


}
