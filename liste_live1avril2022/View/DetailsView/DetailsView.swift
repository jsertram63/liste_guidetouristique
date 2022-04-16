//
//  DetailsView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 16/04/2022.
//

import SwiftUI
import MapKit

struct DetailsView: View {
    // Création du propriété afin d'initialiser la vue Map()
    //@State private var region =
    
    var lieuxDetails: CategoriesModel
    
    var body: some View {
        VStack {
            // Vue Map
            Map(coordinateRegion: .constant(
                MKCoordinateRegion(
                    center: lieuxDetails.sitesTouristiques[0].coordonnes,
                    span: MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)))
            )
            .frame(height: 300)
            
            Image(lieuxDetails.sitesTouristiques[0].imageSites)
                .resizable()
                .frame(width: 150.0, height: 150.0)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
                .offset(y: -85)
                .padding(.bottom, -75)
            
            HStack(alignment: .center) {
                Text(lieuxDetails.sitesTouristiques[0].lieux)
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: lieuxDetails.sitesTouristiques[0].link)!)
                
            }
            .padding()
            
            Spacer()
        }
        .background(.brown.opacity(0.5))
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(lieuxDetails: SitesTouristiqueModel.listeSitesTouristiques.first!)
    }
}
