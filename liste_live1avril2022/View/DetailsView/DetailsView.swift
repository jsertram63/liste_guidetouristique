//
//  DetailsView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 16/04/2022.
//

import SwiftUI
import MapKit

struct DetailsView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.6359541, longitude: -1.51146),
        span: MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
    )
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .frame(height: 300)
            
            Image("montSaintMichel")
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
                Text("Mont Saint Michel")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("Wikipedia")
            }
            .padding()
            
            Spacer()
        }
        .background(.brown.opacity(0.5))
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
