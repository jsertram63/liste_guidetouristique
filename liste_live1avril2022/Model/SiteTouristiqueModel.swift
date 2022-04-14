//
//  SiteTouristiqueModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//
import Foundation
import MapKit

struct SiteTouristiqueModel: Identifiable {
    let id = UUID()
    var lieux: String
    var imageSites: String
    var link: String
    var coordonnes: CLLocationCoordinate2D
}

extension SiteTouristiqueModel {
    
    // France
    static let listeSitesFrance: [SiteTouristiqueModel] = [
        SiteTouristiqueModel(
            lieux: "Mont Saint-Michel",
            imageSites: "montSaintMichel",
            link: "https://fr.wikipedia.org/wiki/Le_Mont-Saint-Michel",
            coordonnes: CLLocationCoordinate2D(latitude: 48.6359541, longitude: -1.51146)
        ),
        SiteTouristiqueModel(
            lieux: "Les Pyrénées",
            imageSites: "Pyrenees",
            link: "https://fr.wikipedia.org/wiki/Pyr%C3%A9n%C3%A9es",
            coordonnes: CLLocationCoordinate2D(latitude: 42.6982487, longitude: 0.4969969)
        ),
        SiteTouristiqueModel(
            lieux: "La Tour Eiffel",
            imageSites: "tourEiffel",
            link: "https://fr.wikipedia.org/wiki/Tour_Eiffel",
            coordonnes: CLLocationCoordinate2D(latitude: 48.8582602, longitude: 2.2944991)
        ),
        SiteTouristiqueModel(
            lieux: "Château de Versailles",
            imageSites: "versailles",
            link: "https://fr.wikipedia.org/wiki/Versailles",
            coordonnes: CLLocationCoordinate2D(latitude: 48.8187098, longitude: 1.9886769)
        )
    ]
    
    // Italie
    static let listeSitesItalie: [SiteTouristiqueModel] = [
        SiteTouristiqueModel(
            lieux: "Basilique Saint Pierre",
            imageSites: "basiliqueSaintPierre",
            link: "https://fr.wikipedia.org/wiki/Basilique_Saint-Pierre",
            coordonnes: CLLocationCoordinate2D(latitude: 41.9021569, longitude: 12.4537121)
        ),
        SiteTouristiqueModel(
            lieux: "Les Dolomites",
            imageSites: "dolomites",
            link: "https://fr.wikipedia.org/wiki/Dolomites",
            coordonnes: CLLocationCoordinate2D(latitude: 36.5529898, longitude: -117.9453614)
        ),
        SiteTouristiqueModel(
            lieux: "Venise",
            imageSites: "venise",
            link: "https://fr.wikipedia.org/wiki/Venise",
            coordonnes: CLLocationCoordinate2D(latitude: 45.4371908, longitude: 12.3345898)
        ),
        SiteTouristiqueModel(
            lieux: "La Scala Dei Turchi",
            imageSites: "scalaDeiTurchi",
            link: "https://fr.wikipedia.org/wiki/Scala_dei_Turchi",
            coordonnes: CLLocationCoordinate2D(latitude: 37.2899023, longitude: 13.4727541))
    ]
    
    // UK
    static let listeSitesUK: [SiteTouristiqueModel] = [
        SiteTouristiqueModel(
            lieux: "Buckingham Palace",
            imageSites: "buckingham",
            link: "https://fr.wikipedia.org/wiki/Palais_de_Buckingham",
            coordonnes: CLLocationCoordinate2D(latitude: 51.5008413, longitude: -0.1429863)
        ),
        SiteTouristiqueModel(
            lieux: "Les Cornouilles",
            imageSites: "cornouailles",
            link: "https://fr.wikipedia.org/wiki/Cornouailles",
            coordonnes: CLLocationCoordinate2D(latitude: 50.416667, longitude: -4.75)
        ),
        SiteTouristiqueModel(
            lieux: "Le Devon",
            imageSites: "devon",
            link: "https://fr.wikipedia.org/wiki/Devon_(comt%C3%A9)",
            coordonnes: CLLocationCoordinate2D(latitude: 50.7772135, longitude: -3.999461)
        ),
        SiteTouristiqueModel(
            lieux: "Lake National Park",
            imageSites: "lakeDistrictNationalPark",
            link: "https://fr.wikipedia.org/wiki/Lake_District",
            coordonnes: CLLocationCoordinate2D(latitude: 54.463474, longitude: -3.042516)),
    ]
    // USA
    static let listeStitesUSA: [SiteTouristiqueModel] = [
        SiteTouristiqueModel(
            lieux: "New-York",
            imageSites: "newYork",
            link: "https://fr.wikipedia.org/wiki/New_York",
            coordonnes: CLLocationCoordinate2D(latitude: 40.7127281, longitude: -74.0060152)
        ),
        SiteTouristiqueModel(
            lieux: "Chutes du Niagara",
            imageSites: "niagaraFalls",
            link: "https://fr.wikipedia.org/wiki/New_York",
            coordonnes: CLLocationCoordinate2D(latitude: 43.0784134, longitude: -79.0743266)
        ),
        SiteTouristiqueModel(
            lieux: "Les Rocheuses",
            imageSites: "rockMountain",
            link: "https://fr.wikipedia.org/wiki/Montagnes_Rocheuses",
            coordonnes: CLLocationCoordinate2D(latitude: 40.3427932, longitude: -105.6836389)
        ),
        SiteTouristiqueModel(
            lieux: "Parc National de Yellowstone",
            imageSites: "yellowStone",
            link: "https://fr.wikipedia.org/wiki/Parc_national_de_Yellowstone",
            coordonnes: CLLocationCoordinate2D(latitude: 44.427963, longitude: -110.588455))
    ]
}
