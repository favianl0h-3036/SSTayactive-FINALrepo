//
//  ShakerViewController.swift
//  SSTayactive 2
//
//  Created by Chew Caven on 6/12/20.
//  Copyright © 2020 Electron Inc. All rights reserved.
//

import UIKit

class ShakerViewController: UIViewController {
var shakes = 0
var coinscollected = 0
    
    @IBOutlet weak var shakesLabel: UILabel!
    @IBOutlet weak var CongratsLabel: UILabel!
    @IBOutlet weak var coinlabel: UILabel!
    @IBOutlet weak var LabelTotalCoin: UILabel!
    @IBOutlet weak var claimButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
           self.becomeFirstResponder() // To get shake gesture
        }

        // We are willing to become first responder to get shake motion
        override var canBecomeFirstResponder: Bool {
            get {
                return true
            }
        }

        // Enable detection of shake motion
        override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake {
                shakes = shakes + 1
                shakesLabel.text = String(shakes)
                coinlabel.text = String(shakes / 1)
                coinscollected =  shakes / 1
                
                }
                
            }
    @IBAction func pressedClaim(_ sender: Any) {
        owndata.details.money = owndata.details.money + coinscollected
        LabelTotalCoin.text = String(owndata.details.money)
        shakes = 0
        shakesLabel.text = "0"
        coinscollected = 0
        coinlabel.text = "0"
        
        
        
        
    }
    
            }
        

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


