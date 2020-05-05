//
//  ViewControllerTab1.swift
//  SellFinalProject
//
//  Created by Remy Sell on 5/4/20.
//  Copyright © 2020 Remy Sell. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var distanceLabel: UILabel!
    
    
    let locMan: CLLocationManager = CLLocationManager()
        var startLocation: CLLocation!
        
        let SSHakLat: CLLocationDegrees = 40.303850
        let SSHakLong: CLLocationDegrees = -79.548220
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            
            let newLocation: CLLocation=locations[0]
            NSLog("Something is up")
            
        if
            newLocation.horizontalAccuracy >= 0 {
            
            let PLand:CLLocation = CLLocation(latitude: SSHakLat, longitude: SSHakLong)
            let delta:CLLocationDistance = PLand.distance(from: newLocation)
            let miles: Double = (delta * 0.000621371) + 0.5
            
            if miles < 3 {
                locMan.stopUpdatingLocation()
                distanceLabel.text = "Enjoy some kick ass smoothies!"
            } else {
                let commaDelimited: NumberFormatter = NumberFormatter()
                commaDelimited.numberStyle = NumberFormatter.Style.decimal
                
                    
                distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))!+"miles to Shake Shack"
            }
            
            
        }
        else
        {
            distanceLabel.text = "ERROR"
        }
    }
            

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            locMan.delegate = self
            locMan.desiredAccuracy = kCLLocationAccuracyThreeKilometers
            locMan.distanceFilter = 1609
            
            locMan.requestWhenInUseAuthorization()
            locMan.startUpdatingLocation()
            startLocation = nil
        }


    }


