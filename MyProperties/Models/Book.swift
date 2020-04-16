//
//  Book.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import Foundation

struct Book: PropertyType, Codable {
    var name: String
    var description: String
    var author: String
    
    static func getBooks() -> [Book]? {
        guard let booksURL = Bundle.main.url(forResource: "Books", withExtension: "plist") else{
            return nil
        }
        return booksURL.content(type: Book.self)
    }
}
