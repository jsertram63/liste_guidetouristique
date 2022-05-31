//
//  SiteViewModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 20/05/2022.
//

import SwiftUI

class SiteViewModel: ObservableObject {
    
    enum State {
        case idle
        case loading
        case failed(Error)
        case fetchSites
    }

    @Published private(set) var state = State.idle
    
    @Published var sites: [Site] = []
    @Published var sitesTouriques: Sites?
    
    // Récupération des données depuis l'API
    func fetchSites() {
        guard let url = URL(string:"http://137.184.217.221/app/site/") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("données pas reçus")
                return
            }
            
            do {
                let sites: Sites = try JSONDecoder().decode(Sites.self, from: data)
                DispatchQueue.main.async {
                    self?.sites = sites.sites;
                    //print(sites)
                }
            }
            catch {
            // Attente d'implémentation
            }
        }
        
        task.resume()
    }
}
