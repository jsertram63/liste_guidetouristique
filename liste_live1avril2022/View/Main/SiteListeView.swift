//
//  SiteListeView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 08/04/2022.
//

import SwiftUI

struct SiteListeView: View {
    
    var sites = siteData2
    

    
    var body: some View {
        List(sites){ siteCourant in
            HStack {
                Image(siteCourant.nomImageSite)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 50, height: 50)
                VStack{
                    Text(siteCourant.titre)
                    Text(siteCourant.pays)
                }
                Spacer()
                Image(siteCourant.pays)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 50, height: 50)
                
            }
            
        }
        .listStyle(.plain)
    }
}
