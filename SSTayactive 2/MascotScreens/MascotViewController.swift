//
//  MascotViewController.swift
//  SSTayactive 2
//
//  Created by Favian LOH on 18/12/20.
//  Copyright © 2020 Electron Inc. All rights reserved.
//

import UIKit

class MascotViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let isNewUser = defaults.object(forKey: "isNewUser") as? Bool {
            if isNewUser {
                perform(#selector(presentGetStartedViewController), with: nil, afterDelay: 0)
            }
        } else {
            defaults.set(true, forKey: "isNewUser")
            perform(#selector(presentGetStartedViewController), with: nil, afterDelay: 0)
        }
    }
    
    @objc private func presentGetStartedViewController() {
        let vc = storyboard?.instantiateViewController(identifier: "getStarted") as! GetStartedViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
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
