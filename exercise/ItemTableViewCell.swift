//
//  ItemTableViewCell.swift
//  exercise
//
//  Created by Hugo on 11/8/16.
//  Copyright © 2016 hugo. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(item: Item){
        self.titleLabel.text = item.title
        self.locationLabel.text = item.displayLocation
        loadImageItem(urlImageItem: item.thumbnail!)
    }
    
    func loadImageItem(urlImageItem: String) {
        let url: URL = URL(string: urlImageItem)!
        getImageDataFromUrl(url) { (data, response, error)  in
            DispatchQueue.main.async { () -> Void in
                guard
                    let data = data
                    , error == nil
                    else {
                        return
                }
                let image = UIImage(data: data)
                self.itemImageView.image = image
            }
        }
    }
    
    func getImageDataFromUrl(_ url:URL, completion: @escaping ((_ data: Data?, _ response: URLResponse?, _ error: NSError? ) -> Void)) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            completion(data, response, error as NSError?)
            } .resume()
    }

}
