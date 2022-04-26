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
    // initialisation de la variable sitesTouristiques
    init() {
        let guide = SitesDataServices.listeSitesTouristiques
        self.guideTouristique = guide
    }
    
    @Published var guideTouristique: [CategoriesModel]
    @Published var favorisChoisis = false
    
    
}
