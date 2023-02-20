//
//  ViewController.swift
//  Project_2
//
//  Created by Alex Zi on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate
,UITableViewDataSource  {
    
    let resturants = ["Sichuan Style", "Spcicy Sichuan", "Haidilao", "Chipotle"]
    let food = ["Spicy Numbing Hot Pot", "Spicy&Sour Shredded Potatoes", "Tender Chicken with Fresh Mushrooms", "Burrito"]
    var display_food = ""

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
            return 1
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = display_food
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            // Get the selected restaurant's food items
            display_food = "Dish: " + food[indexPath.row]
            
            // Reload the food table view to display the new data
            tblViewBottom.reloadData()
        }
    }


}

