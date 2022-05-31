//
//  SitesTouristiquesViewModel.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 26/04/2022.
//

import Foundation
import MapKit
import SwiftUI

final class SitesTouristiquesViewModel: ObservableObject {
    // initialisation de la variable categories
    init() {
        let categorie = SitesDataServices.listeSitesTouristiques
        self.categories = categorie
    }
    
    @Published var categories: [CategoriesModel]
    @Published var favorisChoisis = false
}
