//
//  MapView.swift
//  NearMe
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    
    let landmarks: [Landmark]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        updateAnnotations(from: uiView)
    }
    
    private func updateAnnotations(from mapView: MKMapView) {
        
        mapView.removeAnnotations(mapView.annotations)
        let annotations = self.landmarks.map(LandmarkAnnotation.init)
        mapView.addAnnotations(annotations)
    }
}
