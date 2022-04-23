//
//  SiteTouristiqueModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//
import Foundation
import MapKit

struct CategoriesModel: Identifiable {
    let id = UUID()
    var pays: String
    var sitesTouristiques: [SitesTouristiqueModel]
}

struct SitesTouristiqueModel: Identifiable {
    let id = UUID()
    var lieux: String
    var imageSites: String
    var favorite: Bool
    var link: String
    var coordonnes: CLLocationCoordinate2D
}

var listeSitesTouristiques: [CategoriesModel] = [
    // Constructeur France
    CategoriesModel(
        pays: "France 🇫🇷",
        sitesTouristiques: [
            SitesTouristiqueModel(
                lieux: "Mont Saint-Michel",
                imageSites: "montSaintMichel",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Le_Mont-Saint-Michel",
                coordonnes: CLLocationCoordinate2D(latitude: 48.6359541, longitude: -1.51146)
            ),
            SitesTouristiqueModel(
                lieux: "Les Pyrénées",
                imageSites: "Pyrenees",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Pyr%C3%A9n%C3%A9es",
                coordonnes: CLLocationCoordinate2D(latitude: 42.519901, longitude: 2.45804)
            ),
            SitesTouristiqueModel(
                lieux: "La Tour Eiffel",
                imageSites: "tourEiffel",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Tour_Eiffel",
                coordonnes: CLLocationCoordinate2D(latitude: 48.8582602, longitude: 2.2944991)
            ),
            SitesTouristiqueModel(
                lieux: "Château de Versailles",
                imageSites: "versailles",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Versailles",
                coordonnes: CLLocationCoordinate2D(latitude: 48.8187098, longitude: 1.9886769)
            )
        ]
    ),
    // Constructeur Italie
    CategoriesModel(
        pays: "Italie 🇮🇹",
        sitesTouristiques: [
            SitesTouristiqueModel(
                lieux: "Basilique Saint Pierre",
                imageSites: "basiliqueSaintPierre",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Basilique_Saint-Pierre",
                coordonnes: CLLocationCoordinate2D(latitude: 41.9021569, longitude: 12.4537121)
            ),
            SitesTouristiqueModel(
                lieux: "Les Dolomites",
                imageSites: "dolomites",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Dolomites",
                coordonnes: CLLocationCoordinate2D(latitude: 36.5529898, longitude: -117.9453614)
            ),
            SitesTouristiqueModel(
                lieux: "Venise",
                imageSites: "venise",
                favorite:false,
                link: "https://fr.wikipedia.org/wiki/Venise",
             
                coordonnes: CLLocationCoordinate2D(latitude: 45.4371908, longitude: 12.3345898)
            ),
            SitesTouristiqueModel(
                lieux: "La Scala Dei Turchi",
                imageSites: "scalaDeiTurchi",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Scala_dei_Turchi",
                coordonnes: CLLocationCoordinate2D(latitude: 37.2899023, longitude: 13.4727541))
        ]
    ),
    // Constructeur Royaume-Unis
    CategoriesModel(
        pays: "Royaume-Unis 🇬🇧",
        sitesTouristiques: [
            SitesTouristiqueModel(
                lieux: "Buckingham Palace",
                imageSites: "buckingham",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Palais_de_Buckingham",
                coordonnes: CLLocationCoordinate2D(latitude: 51.5008413, longitude: -0.1429863)
            ),
            SitesTouristiqueModel(
                lieux: "Les Cornouilles",
                imageSites: "cornouailles",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Cornouailles",
                coordonnes: CLLocationCoordinate2D(latitude: 50.416667, longitude: -4.75)
            ),
            SitesTouristiqueModel(
                lieux: "Le Devon",
                imageSites: "devon",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Devon_(comt%C3%A9)",
                coordonnes: CLLocationCoordinate2D(latitude: 50.7772135, longitude: -3.999461)
            ),
            SitesTouristiqueModel(
                lieux: "Lake National Park",
                imageSites: "lakeDistrictNationalPark",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Lake_District",
                coordonnes: CLLocationCoordinate2D(latitude: 54.463474, longitude: -3.042516)),
        ]
    ),
    // Constructeur États-Unis
    CategoriesModel(
        pays: "États-Unis 🇺🇸",
        sitesTouristiques: [
            SitesTouristiqueModel(
                lieux: "New-York",
                imageSites: "newYork",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/New_York",
                coordonnes: CLLocationCoordinate2D(latitude: 40.7127281, longitude: -74.0060152)
            ),
            SitesTouristiqueModel(
                lieux: "Chutes du Niagara",
                imageSites: "niagaraFalls",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/New_York",
                coordonnes: CLLocationCoordinate2D(latitude: 43.0784134, longitude: -79.0743266)
            ),
            SitesTouristiqueModel(
                lieux: "Les Rocheuses",
                imageSites: "rockMountain",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Montagnes_Rocheuses",
                coordonnes: CLLocationCoordinate2D(latitude: 40.3427932, longitude: -105.6836389)
            ),
            SitesTouristiqueModel(
                lieux: "Parc National de Yellowstone",
                imageSites: "yellowStone",
                favorite: false,
                link: "https://fr.wikipedia.org/wiki/Parc_national_de_Yellowstone",
                coordonnes: CLLocationCoordinate2D(latitude: 44.427963, longitude: -110.588455))
        ]
    )
]
