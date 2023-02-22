//
//  ViewController.swift
//  Project_3
//
//  Created by Alex Zi on 2/21/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let imgNames = ["0", "1","2","3","4","5","6","7"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imgContainer.image = UIImage(named: "rest\(indexPath.row)")
        cell.lblImage.text = "Restaurant : \(imgNames[indexPath.row])"
        
        return cell
    }


}

