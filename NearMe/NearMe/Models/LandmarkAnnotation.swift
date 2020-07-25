//
//  LandmarkAnnotation.swift
//  NearMe
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(landmark: Landmark) {
        self.title = landmark.name
        self.coordinate = landmark.coordinate
    }
}
