//
//  InsetMapView.swift
//  Safari
//
//  Created by Shubham Kumar on 24/01/22.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    //MARK: PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    
    
    //MARK: BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height:256)
            .cornerRadius(13)
            .overlay(NavigationLink(destination:MapView()) {
                HStack {
                    Image(systemName: "mappin.circle")
                        .foregroundColor(.white)
                        .imageScale(.large)
                    
                    Text("Locations")
                        .foregroundColor(.accentColor)
                        .fontWeight(.bold)
                }//:HStack
                .padding(.vertical, 10)
                .padding(.horizontal, 14)
                .background(Color.black
                                .opacity(0.4)
                                .cornerRadius(8))
            }//:Navigation Link
                        .padding(12), alignment: .topTrailing
            )//:Overlay
    }//:Body
}

//MARK: PREVIEW
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
    }
}
