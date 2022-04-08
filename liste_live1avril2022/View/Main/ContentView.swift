//
//  ContentView.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//
import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray5
    }
    
    var body: some View {
        TabView {
            SiteListeView()
                .tabItem {
                    Image("globe.europe.africa.fill")
                    Text("Guide")
                }
            
            GuideVoyagePierricView(
                listeSitesFrance: SiteTouristiqueModel.listeSitesFrance,
                listeSitesItalie: SiteTouristiqueModel.listeSitesItalie,
                listeSitesUK: SiteTouristiqueModel.listeSitesUK,
                listeSitesUSA: SiteTouristiqueModel.listeStitesUSA
            )
                .tabItem {
                    Image(systemName: "airplane.departure")
                    Text("Guide Pierric")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
