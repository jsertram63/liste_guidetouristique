
//
//  ContentView.swift
//  liste_live1avril2022
//
//  Created by Lunack on 01/04/2022.
//
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            SiteListeView(listeSites: listeSitesTouristiques)
                .tabItem {
                    Image(systemName: "globe.europe.africa.fill")
                    Text("Lieux insolites")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
