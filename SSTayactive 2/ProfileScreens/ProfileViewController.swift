//
//  ProfileViewController.swift
//  SSTayactive 2
//
//  Created by Chew Caven on 7/12/20.
//  Copyright © 2020 Electron Inc. All rights reserved.
//

import UIKit
var xp = Float()
var xpneeded = Float()
class ProfileViewController: UIViewController {
    @IBOutlet weak var XPbar: UIProgressView!
    @IBOutlet weak var experiencebar: UIProgressView!
    @IBOutlet weak var numberOfCookieLabel: UILabel!
    @IBOutlet weak var cookieButton: UIButton!
    @IBOutlet weak var LevelLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        experiencebar.progress = (xp/100)
        numberOfCookieLabel.text = String(owndata.details.cookies)
        LevelLabel.text = String(owndata.details.Level)

        // Do any additional setup after loading the view.
    }
    @IBAction func fedCookie(_ sender: Any) {
        if owndata.details.cookies >= 0{
        owndata.details.cookies = owndata.details.cookies - 1
            xp = xp + 10
            experiencebar.progress = (xp/xpneeded)
            numberOfCookieLabel.text = String(owndata.details.cookies)
            if xp >= xpneeded{
                owndata.details.Level = owndata.details.Level + 1
                xp = 0
                xpneeded = Float(owndata.details.Level * 50)
                LevelLabel.text = String(owndata.details.Level)
                experiencebar.progress = (xp/xpneeded)
                
            }
        
        }
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



//day 1 log: Finished contentpage and a few others(Side note: gsoijfoijaoifj opjfop jfepjaf It's not working)

//day 2 log: Ayyyyeeeeeee it workssssss. I didn't expect it to but yay anyway)
