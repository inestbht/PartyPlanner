//
//  ViewController.swift
//  PartyPlanner
//
//  Created by Samuel Pena on 6/5/22.
//  Copyright © 2022 Samuel Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var partyItems = ["Potato Chips",
                      "Tortilla Chips",
                      "Salsa",
                      "Chili",
                      "Punch",
                      "Sudsy Beverages",
                      "Brownies",
                      "Cupcakes",
                      "Fruit salad",
                      "Ribs",
                      "Corn bread",
                      "Macaroni Salad",
                      "Sandwich Rolls",
                      "Roast Beef",
                      "Ham",
                      "Cheese",
                      "Mayo",
                      "Mustard",
                      "Hummus",
                      "Baby carrots",
                      "Celery",
                      "Veggie Dip",
                      "Napkins",
                      "Plates & Bowls",
                      "Forks and Knives",
                      "Cups"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("*** numberOfRowsInSection was just called and there are \(partyItems.count) rows in the tableView")
        return partyItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = partyItems[indexPath.row]
        print(">>> Dequeing the table view cell for indexPath.row = \(indexPath.row) where the cell contains item \(partyItems[indexPath.row])")
        return cell
    }    
}
