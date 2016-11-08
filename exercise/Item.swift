//
//  Item.swift
//  exercise
//
//  Created by Hugo on 11/7/16.
//  Copyright © 2016 hugo. All rights reserved.
//

import Foundation
import ObjectMapper

class Item: Mappable {
    
    var id: Int?
    var title: String?
    var thumbnail: String?
    var displayLocation: String?
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        id              <- map["id"]
        title           <- map["title"]
        thumbnail       <- map["thumbnail"]
        displayLocation <- map["displayLocation"]
    }
    
}
