//
//  ViewController.swift
//  Project_2
//
//  Created by Alex Zi on 2/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate
,UITableViewDataSource  {
    
    let resturants = ["sichuan impression", "Chengdu Taste", "Haidilao", "Chipotle"]
    let food = [["Spicy Numbing Hot Pot", "Lamb Skewers","Spicy Duck Blood"], ["Spicy&Sour Shredded Potatoes", "Boiled Fish in Hot Chili Oil"], ["Tender Chicken with Fresh Mushrooms","Shrimp Surimi","Beef Tripe"], ["Burritos", "Bowls", "Tacos","Salad","Chips and guacamole"]]
    var display_food = [""]

    @IBOutlet weak var tblViewTop: UITableView!
    @IBOutlet weak var tblViewBottom: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop{
            return resturants.count
        }
        else {
            return display_food.count
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = display_food[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            // Get the selected restaurant's food items
            display_food = food[indexPath.row]
            
            // Reload the food table view to display the new data
            tblViewBottom.reloadData()
        }
    }


}

