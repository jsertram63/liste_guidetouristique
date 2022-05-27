//
//  SiteModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 20/05/2022.
//

import Foundation


// MARK: - Site

struct Sites:Codable, Hashable {
    let sites:[Site]
}

struct Site: Codable, Hashable {
    let geometry: Geometry
    let id, nom, pays: String
    let photo: String
   

    enum CodingKeys: String, CodingKey {
        case geometry
        case id = "_id"
        case nom, pays, photo
    }
}

// MARK: - Geometry
struct Geometry: Codable, Hashable {
    let coordinates: Coordinates
    let type: String
}

// MARK: - Coordinates
struct Coordinates: Codable, Hashable {
    let lat, lon: Double
}
