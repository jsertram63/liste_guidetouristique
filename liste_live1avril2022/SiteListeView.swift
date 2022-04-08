//
//  SiteListeView.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//

import SwiftUI

struct SiteListeView: View {
    
    var sites = siteData
    

    
    var body: some View {
        List(sites){ siteCourant in
            Text(siteCourant.titre)
            
        }
        .listStyle(.plain)
    }
}


