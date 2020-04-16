//
//  URLExtension.swift
//  MyProperties
//
//  Created by praveen velanati on 4/16/20.
//  Copyright © 2020 praveen velanati. All rights reserved.
//

import Foundation

extension URL {
    
    func content<T: Codable>(type: T.Type) -> [T]? {
        let prop = PropertyListDecoder()
        if let data = try? Data(contentsOf: self) {
            if let books = try? prop.decode([T].self, from: data)  {
                return books
            }
        }
        return nil
    }
}
