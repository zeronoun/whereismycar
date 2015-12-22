//
//  MyCarAnnotation.swift
//  Where is my car
//
//  Created by noun on 10.29.15.
//  Copyright © 2015 noun. All rights reserved.
//

import UIKit
import MapKit

class MyCarAnnotation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D

    init(coordinates: CLLocationCoordinate2D){
        title = "My Car"
        subtitle = ""
        coordinate = coordinates
        
        super.init()
    }
}
