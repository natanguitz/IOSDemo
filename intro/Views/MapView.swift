//
//  MapView.swift
//  intro
//
//  Created by Alexander Guitz on 2021-06-24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 59.363317765271084,
            longitude: 17.900247099072466)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
