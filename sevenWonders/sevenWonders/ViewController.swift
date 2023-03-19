//
//  ViewController.swift
//  SevenWonders
//
//  Created by Alex Zi on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let sevenWonders = ["Taj Mahal", "Colosseum", "pyramid", "Chichén Itzá", "Christ The Redeemer", "Machu Picchu", "Petra"]
    
    
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sevenWonders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imgContainer.image = UIImage(named: sevenWonders[indexPath.row])
        cell.lblImage.text = sevenWonders[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedImg = sevenWonders[indexPath.row]
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "segueDetails", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetails" {
            let detailsVC = segue.destination as! SecondViewController
            detailsVC.wonderIndex = selectedIndex
        }
    }
}

