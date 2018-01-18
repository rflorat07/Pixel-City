//
//  DroppablePin.swift
//  PixelCity
//
//  Created by Roger Florat on 18/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    var identifier: String
    dynamic var coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
    
    
    
    
    
    
}
