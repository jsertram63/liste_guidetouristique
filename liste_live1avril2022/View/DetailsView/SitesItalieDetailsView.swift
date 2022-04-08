//
//  SitesItalieDetailsView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 04/04/2022.
//
import SwiftUI
import MapKit

struct SitesItalieDetailsView: View {
    
    var listeSitesItalie: SiteTouristiqueModel
    
    var body: some View {
        VStack {
            Map(
                coordinateRegion: .constant(MKCoordinateRegion(center: listeSitesItalie.coordonnes, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))),
                showsUserLocation: false,
                annotationItems: [listeSitesItalie]) { item in
                    MapMarker(coordinate: item.coordonnes)
                }
                .frame(height: 300)
            
            Image(listeSitesItalie.imageSites)
                .resizable()
                .frame(width: 175.0, height: 175.0)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
                .offset(y: -100)
                .padding(.bottom, -75.0)
            
            HStack {
                Text(listeSitesItalie.lieux)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: listeSitesItalie.link)!)
                    .foregroundColor(.blue)
            }
            .padding()
            
            Spacer()
        }
        .background(.brown.opacity(0.5))
    }
}

struct SitesItalieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SitesItalieDetailsView(listeSitesItalie: SiteTouristiqueModel.listeSitesItalie[3])
    }
}
