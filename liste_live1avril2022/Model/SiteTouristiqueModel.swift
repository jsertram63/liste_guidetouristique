//
//  SiteTouristiqueModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//

import Foundation


struct SiteTouristiqueModel : Identifiable {
    var titre:String
    var id = UUID()
    var pays:String
    var nomImageSite:String
    var drapeauImage:String
    var description:String 
}



    var siteData : [SiteTouristiqueModel] = [
        SiteTouristiqueModel(titre: "Pyrennes", pays: "France", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel(titre: "Les rocheuses", pays: "USA", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel(titre: "la scla dei turch", pays: "Italie", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel(titre: "Versailles", pays: "France", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel(titre: "buckingham palace", pays: "UK", nomImageSite: "", drapeauImage: "", description: ""),
        SiteTouristiqueModel(titre: "Mont St michel", pays: "France", nomImageSite: "", drapeauImage: "", description: "")
    ]
    

