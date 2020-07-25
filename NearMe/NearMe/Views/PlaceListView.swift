//
//  PlaceListView.swift
//  NearMe
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Landmark]
    
    var onTap: () -> ()
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Places")
                    .font(.title)
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(Color.gray)
                .gesture(TapGesture()
                    .onEnded(self.onTap))
            
            List(self.landmarks, id: \.id) { landmark in
                Text(landmark.name)
                    .font(.headline)
                    .foregroundColor(Color.orange)
                
                Text(landmark.title)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            }.animation(nil)
            
        }.cornerRadius(16)
            .background(Color.black)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Landmark(placemark: MKPlacemark())], onTap: {})
    }
}
