//
//  DetailView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 20/04/2022.
//

import SwiftUI
import MapKit

struct DetailView: View {
    
    @EnvironmentObject private var sitesVM: SitesTouristiquesViewModel
    var lieuxDetails: SitesTouristiqueModel
        
        var body: some View {
            VStack {
                mapView
                .overlay(alignment: .topLeading) {
                    boutonFavoris
                }
                
                imageSite
                
                description
                
                Spacer()
            }
            .background(.brown.opacity(0.5))
        }

}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(lieuxDetails: SitesDataServices.listeSitesTouristiques.first!.sitesTouristiques.first!)
            .environmentObject(SitesTouristiquesViewModel())
    }
}

/* ********************************************************************************** */

extension DetailView {
    // Bouton favoris
    private var boutonFavoris: some View {
        Button {
            sitesVM.favorisChoisis.toggle()
        } label: {
            if sitesVM.favorisChoisis {
                Image(systemName: "heart.fill")
                    .frame(width: 15.0, height: 15.0)
                    .font(.headline)
                    .padding(15.0)
                    .foregroundColor(Color.red)
                    .background(.thickMaterial)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 0)
            } else {
                Image(systemName: "heart")
                    .frame(width: 15.0, height: 15.0)
                    .font(.headline)
                    .padding(15.0)
                    .foregroundColor(Color.brown)
                    .background(.thickMaterial)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 0)
            }
        }
        .padding([.top, .leading], 15.0)
    }
    
    // Vue Map
    private var mapView: some View {
        Map(coordinateRegion: .constant(
            MKCoordinateRegion(
                center: lieuxDetails.coordonnes,
                span: MKCoordinateSpan(latitudeDelta: 0.10, longitudeDelta: 0.10)))
        )
        .allowsHitTesting(false) // fige la carte
        .frame(height: 350)
    }
    
    // Image du site
    private var imageSite: some View {
        Image(lieuxDetails.imageSites)
            .resizable()
            .frame(width: 175.0, height: 175.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .offset(y: -95)
            .padding(.bottom, -75)
    }
    
    // description
    private var description: some View {
        HStack(alignment: .center) {
            Text(lieuxDetails.lieux)
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
            
            Link("Wikipedia", destination: URL(string: lieuxDetails.link)!)
        }
        .padding()
    }
}
