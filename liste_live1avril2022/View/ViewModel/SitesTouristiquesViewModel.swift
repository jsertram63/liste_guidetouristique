//
//  SitesTouristiquesViewModel.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 26/04/2022.
//

import Foundation
import MapKit
import SwiftUI

class SitesTouristiquesViewModel: ObservableObject {
    init() {
        let sitesTouristiques = SitesDataServices.listeSitesTouristiques
        self.sitesTouristiques = sitesTouristiques
    }
    
    @Published var sitesTouristiques: [CategoriesModel]
}
