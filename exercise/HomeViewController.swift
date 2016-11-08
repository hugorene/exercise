//
//  HomeViewController.swift
//  exercise
//
//  Created by Hugo on 11/7/16.
//  Copyright © 2016 hugo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func search(_ sender: UIButton) {
        self.activityIndicator.startAnimating()
        SearchHandler.listingItemsByTerm(searchTerm: self.searchTextField.text!) { (result: [Item]?) in
            self.activityIndicator.stopAnimating()
            self.performSegue(withIdentifier: "ListingSegue", sender: result)
        }
    }

    // MARK: - Navigation
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listingViewController = segue.destination as! ListingViewController
        listingViewController.items = sender as! [Item]
    }
 
}
