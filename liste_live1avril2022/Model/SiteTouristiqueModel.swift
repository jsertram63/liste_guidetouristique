//
//  SiteTouristiqueModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//
import Foundation
import MapKit

struct CategoriesModel: Identifiable {
    
    var id = UUID()
    var pays: String
    var sitesTouristiques: [SitesTouristiqueModel]
}

struct SitesTouristiqueModel: Identifiable {
    
    var id = UUID()
    var lieux: String
    var imageSites: String
    var favorite: Bool
    var link: String
    var coordonnes: CLLocationCoordinate2D
}
