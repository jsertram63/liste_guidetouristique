//
//  SitesFranceDetailsView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 03/04/2022.
//
import SwiftUI
import MapKit

struct SitesFranceDetailsView: View {
    
    var listeSitesFrance: SiteTouristiqueModel
    
    var body: some View {
        VStack {
            Map(
                coordinateRegion: .constant(MKCoordinateRegion(center: listeSitesFrance.coordonnes, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))),
                showsUserLocation: false,
                annotationItems: [listeSitesFrance]) { item in
                    MapMarker(coordinate: item.coordonnes)
                }
                .allowsHitTesting(false)
                .frame(height: 300)
            
            Image(listeSitesFrance.imageSites)
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
                Text(listeSitesFrance.lieux)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: listeSitesFrance.link)!)
                    .foregroundColor(.blue)
            }
            .padding()
            
            Spacer()
        }
        .background(.brown.opacity(0.5))
    }
}

struct SitesFranceDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SitesFranceDetailsView(listeSitesFrance: SiteTouristiqueModel.listeSitesFrance.first!)
    }
}
