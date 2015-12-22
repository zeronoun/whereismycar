//
//  ViewController.swift
//  Where is my car
//
//  Created by noun on 10.29.15.
//  Copyright © 2015 noun. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    var cl : CLLocationManager?

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cl = CLLocationManager()
        cl?.requestAlwaysAuthorization()
        
        mapView.showsUserLocation = true
        mapView.userTrackingMode = MKUserTrackingMode.Follow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func markCarPressed(sender: AnyObject) {
        
        let annot = MyCarAnnotation(coordinates: (cl?.location?.coordinate)!)
        mapView.addAnnotation(annot)
        
        let region = CLCircularRegion(center: (cl?.location?.coordinate)!, radius: 30, identifier: "My Auto")
        
        region.notifyOnEntry = true
        region.notifyOnExit = true
        
        cl?.startMonitoringForRegion(region)
    }

}

