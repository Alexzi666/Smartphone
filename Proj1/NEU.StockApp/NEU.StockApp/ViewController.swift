//
//  ViewController.swift
//  NEU.StockApp
//
//  Created by Alex Zi on 2/11/23.
//

import UIKit
import SwiftyJSON
import Alamofire


class ViewController: UIViewController {

    
    @IBOutlet weak var lblStockPrice: UILabel!
    @IBOutlet weak var textStockSymbol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getStockPrice(_ sender: Any) {
        guard let symbol = textStockSymbol.text else {return}
        let url = "\(baseURL)\(symbol)?apikey=\(api)"
        
    
        
        Alamofire.request(url).responseJSON{ response in
            if response.error != nil {
                print ("Error in response")
                return
            }
            
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            
//            print(stock)
            
//            print(response.data!)
            
            let symbol = stock["symbol"].stringValue
            let price = stock["price"].doubleValue
            let volume = stock["volume"].intValue
            
            self.lblStockPrice.text = "Price = "
            
        }
//        print("I am here")
    }
    
}

