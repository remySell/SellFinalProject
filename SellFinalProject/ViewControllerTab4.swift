//
//  ViewControllerTab4.swift
//  SellFinalProject
//
//  Created by Remy Sell on 5/4/20.
//  Copyright © 2020 Remy Sell. All rights reserved.
//

import UIKit
import MessageUI

class ViewControllerTab4: UIViewController {

    
    
    @IBAction func questionCall(_ sender: Any) {
        let url:NSURL = URL(string: "TEL://2158724831")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
