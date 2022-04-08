//
//  SiteTouristiqueModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//

import Foundation


struct SiteTouristiqueModel2 : Identifiable {
    var titre:String
    var id = UUID()
    var pays:String
    var nomImageSite:String
    var drapeauImage:String
    var description:String
}



    var siteData2 : [SiteTouristiqueModel2] = [
        SiteTouristiqueModel2(titre: "Pyrennes", pays: "France", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel2(titre: "Les rocheuses", pays: "USA", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel2(titre: "la scla dei turch", pays: "Italie", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel2(titre: "Versailles", pays: "France", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel2(titre: "buckingham palace", pays: "UK", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel2(titre: "Mont St michel", pays: "France", nomImageSite: "", drapeauImage: "", description: "")
    ]
    

