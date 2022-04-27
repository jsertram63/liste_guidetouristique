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
                // Vue Map
                Map(coordinateRegion: .constant(
                    MKCoordinateRegion(
                        center: lieuxDetails.coordonnes,
                        span: MKCoordinateSpan(latitudeDelta: 0.10, longitudeDelta: 0.10)))
                )
                .allowsHitTesting(false) // fige la carte
                .frame(height: 350)
                .overlay(alignment: .topLeading) {
                    Button {
                        sitesVM.favorisChoisis.toggle()
                    } label: {
                        if sitesVM.favorisChoisis {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 25.0, height: 25.0)
                                .foregroundColor(Color.red)
                        } else {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 25.0, height: 25.0)
                        }
                    }
                    .padding()

                }
                
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

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(lieuxDetails: SitesDataServices.listeSitesTouristiques.first!.sitesTouristiques.first!)
            .environmentObject(SitesTouristiquesViewModel())
    }
}
