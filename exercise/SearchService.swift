//
//  SearchService.swift
//  exercise
//
//  Created by Hugo on 11/7/16.
//  Copyright © 2016 hugo. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class SearchService {
    
    static func searchItem(url: String, completion: @escaping (_ result: [Item]?) -> Void) {
        Alamofire.request(url).responseJSON { response in
            if response.response?.statusCode == 200 {
                let dataResponse = try! JSONSerialization.jsonObject(with: response.data!, options: JSONSerialization.ReadingOptions.allowFragments) as! Dictionary<String, AnyObject>
                let items = Mapper<Item>().mapArray(JSONArray: dataResponse["data"] as! [[String : Any]])
                completion(items)
            }
        }
    }
    
}
