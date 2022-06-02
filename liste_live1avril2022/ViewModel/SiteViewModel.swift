//
//  SiteViewModel.swift
//  liste_live1avril2022
//
//  Created by Lunack on 20/05/2022.
//

import SwiftUI

class SiteViewModel: ObservableObject {
    @Published var sites = [Site]()
    
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
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}
