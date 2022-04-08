//
//  SiteListeView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 08/04/2022.
//

import SwiftUI

struct SiteListeView: View {
    
    var listeLieux: [SitesDatasModel]
    
    var body: some View {
        List(listeLieux) { liste in
            HStack(alignment: .center, spacing: 15.0) {
                Image(liste.imageLieux)
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .cornerRadius(5)
                    .shadow(radius: 3)
                
                VStack(alignment: .leading, spacing: 5.0) {
                    Text(liste.nomSite)
                    Text(liste.pays)
                }
                
                Spacer()
                
                Image(liste.imageDrapeau)
                    .resizable()
                    .frame(width: 25.0, height: 25.0)
            }
            .padding(/*@START_MENU_TOKEN@*/.vertical, 5.0/*@END_MENU_TOKEN@*/)
        }
        .listStyle(PlainListStyle())
    }
}

struct SiteListeView_Previews: PreviewProvider {
    static var previews: some View {
        SiteListeView(listeLieux: SitesDatasModel.sitesDatas)
    }
}
