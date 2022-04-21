//
//  DetailView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 20/04/2022.
//

import SwiftUI
import MapKit

struct DetailView: View {
    var lieuxDetails: SitesTouristiqueModel
        
        var body: some View {
            VStack {
                // Vue Map
                Map(coordinateRegion: .constant(
                    MKCoordinateRegion(
                        center: lieuxDetails.coordonnes,
                        span: MKCoordinateSpan(latitudeDelta: 0.10, longitudeDelta: 0.10)))
                )
                .frame(height: 400)
                
                Image(lieuxDetails.imageSites)
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
                    Text(lieuxDetails.lieux)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Link("Wikipedia", destination: URL(string: lieuxDetails.link)!)
                    
                }
                .padding()
                
                Spacer()
            }
            .background(.brown.opacity(0.5))
        }

}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(lieuxDetails: SitesTouristiqueModel.)
//    }
//}
