//
//  ShopViewController.swift
//  SSTayactive 2
//
//  Created by Chew Caven on 7/12/20.
//  Copyright © 2020 Electron Inc. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var totalCoinsLabelyeet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalCoinsLabelyeet.text = String(owndata.details.money)
    }
    @IBAction func cookieClick(_ sender: Any) {
        if owndata.details.money >= 5{
            owndata.details.money = owndata.details.money - 5
            owndata.details.cookies = owndata.details.cookies + 1
            totalCoinsLabelyeet.text = String(owndata.details.money)
        }
        
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
