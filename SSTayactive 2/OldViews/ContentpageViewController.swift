//
//  ContentpageViewController.swift
//  SSTayactive 2
//
//  Created by Chew Caven on 6/12/20.
//  Copyright © 2020 Electron Inc. All rights reserved.
//

import UIKit

class ContentpageViewController: UIViewController {
    @IBOutlet weak var totalCoinsLabel: UILabel!
    @IBOutlet weak var reloadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalCoinsLabel.text = String(owndata.details.money)

        // Do any additional setup after loading the view.
    }
    @IBAction func Reload(_ sender: Any) {
        totalCoinsLabel.text = String(owndata.details.money)
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
