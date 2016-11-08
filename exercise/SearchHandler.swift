//
//  SearchHandler.swift
//  exercise
//
//  Created by Hugo on 11/7/16.
//  Copyright © 2016 hugo. All rights reserved.
//

import Foundation

class SearchHandler {
    static func listingItemsByTerm(searchTerm: String, completion: @escaping (_ result: [Item]?) -> Void) {
        let url = String(format: Global.urlSearchItem, arguments: [searchTerm])
        
        SearchService.searchItem(url: url) { (result: [Item]?) in
            completion(result)
        }
    }
}
