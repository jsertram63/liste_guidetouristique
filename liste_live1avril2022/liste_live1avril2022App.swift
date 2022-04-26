//
//  liste_live1avril2022App.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//

import SwiftUI

@main
struct liste_live1avril2022App: App {
    
    @StateObject private var sitesVM = SitesTouristiquesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(SitesTouristiquesViewModel())
        }
    }
}
