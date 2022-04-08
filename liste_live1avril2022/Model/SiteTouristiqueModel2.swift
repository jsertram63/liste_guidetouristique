//
//  SiteTouristiqueModel2.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 08/04/2022.
//

import Foundation

struct SitesDatasModel: Identifiable {
    let id = UUID()
    let pays: String
    let nomSite: String
    let imageLieux: String
    let imageDrapeau: String
}

extension SitesDatasModel {
    static let sitesDatas: [SitesDatasModel] = [
        // France
    SitesDatasModel(pays: "France", nomSite: "Mont Saint-Michel", imageLieux: "montSaintMichel", imageDrapeau: "france"),
    SitesDatasModel(pays: "France", nomSite: "Pyrénées", imageLieux: "Pyrenees", imageDrapeau: "france"),
    SitesDatasModel(pays: "France", nomSite: "Tour Eiffel", imageLieux: "tourEiffel", imageDrapeau: "france"),
    SitesDatasModel(pays: "France", nomSite: "Chateaux de Versailles", imageLieux: "versailles", imageDrapeau: "france"),
    // Italie
    SitesDatasModel(pays: "Italie", nomSite: "Basilique Saint-Pierre", imageLieux: "basiliqueSaintPierre", imageDrapeau: "italie"),
    SitesDatasModel(pays: "Italie", nomSite: "Les Dolomites", imageLieux: "dolomites", imageDrapeau: "italie"),
    SitesDatasModel(pays: "Italie", nomSite: "Scala Dei Turchi", imageLieux: "scalaDeiTurchi", imageDrapeau: "italie"),
    SitesDatasModel(pays: "Italie", nomSite: "Venise", imageLieux: "venise", imageDrapeau: "italie"),
    //UK
    SitesDatasModel(pays: "Angleterre", nomSite: "Buckingham Palace", imageLieux: "buckingham", imageDrapeau: "uk"),
    SitesDatasModel(pays: "Angleterre", nomSite: "Les Cornouailles", imageLieux: "cornouailles", imageDrapeau: "uk"),
    SitesDatasModel(pays: "Angleterre", nomSite: "Le Devon", imageLieux: "devon", imageDrapeau: "uk"),
    SitesDatasModel(pays: "Angleterre", nomSite: "Lake District", imageLieux: "lakeDistrictNationalPark", imageDrapeau: "uk"),
    // USA
    SitesDatasModel(pays: "État-Unis", nomSite: "New-York", imageLieux: "newYork", imageDrapeau: "usa"),
    SitesDatasModel(pays: "État-Unis", nomSite: "Chutes du Niagara", imageLieux: "niagaraFalls", imageDrapeau: "usa"),
    SitesDatasModel(pays: "État-Unis", nomSite: "Montagnes Rocheuses", imageLieux: "rockMountain", imageDrapeau: "usa"),
    SitesDatasModel(pays: "État-Unis", nomSite: "Yellowstone", imageLieux: "yellowStone", imageDrapeau: "usa"),
    ]
}
