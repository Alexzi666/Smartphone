//
//  ViewController.swift
//  HelloWorld
//
//  Created by Alex Zi on 1/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var exampleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am inside viewDidLoad() function :)")
        // Do any additional setup after loading the view.
    }


    @IBAction func PressMeAction(_ sender: UIButton) {
        print("Button is pressed")
        exampleLabel.text = "Hello World :)"
    }
}

