//
//  SiteListeView.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//

import SwiftUI

struct SiteListeView: View {
    
    var siteDatas: [SiteTouristiqueModel]

    
    var body: some View {
        List(siteDatas){ siteCourant in
            Text(siteCourant.titre)
            
        }
    }
}


