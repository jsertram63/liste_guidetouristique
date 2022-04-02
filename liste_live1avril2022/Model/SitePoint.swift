//
//  SitePoint.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//

import SwiftUI


struct SiteTouristiqueModel : Identifiable {
    var titre:String
    var id = UUID()
    var pays:String
    var nomImageSite:String
    var drapeauImage:String
    var description:String
}

struct SitePoint: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SitePoint_Previews: PreviewProvider {
    static var previews: some View {
        SitePoint()
    }
}
