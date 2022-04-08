//
//  GuideVoyagePierricView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 02/04/2022.
//
import SwiftUI

struct GuideVoyagePierricView: View {
    
    var listeSitesFrance: [SiteTouristiqueModel]
    var listeSitesItalie: [SiteTouristiqueModel]
    var listeSitesUK: [SiteTouristiqueModel]
    var listeSitesUSA: [SiteTouristiqueModel]
    
    let pays = ["France 🇫🇷", "État-Unis 🇺🇸", "Royaume-Unis 🇬🇧", "Italie 🇮🇹"]
    
    var body: some View {
        NavigationView {
            List {
                // France
                france
                // Italie
                italie
                // Royaume-Unis
                uk
                // Etats-unis
                usa
            }
            .listStyle(.plain)
            .navigationTitle("Guide Touristique 🌍")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct GuideVoyagePierricView_Previews: PreviewProvider {
    static var previews: some View {
        GuideVoyagePierricView(
            listeSitesFrance: SiteTouristiqueModel.listeSitesFrance,
            listeSitesItalie: SiteTouristiqueModel.listeSitesItalie,
            listeSitesUK: SiteTouristiqueModel.listeSitesUK,
            listeSitesUSA: SiteTouristiqueModel.listeStitesUSA
        )
    }
}

/* ****************************************************************************************** */

extension GuideVoyagePierricView {
    // France
    private var france: some View {
        Section(header: Text(pays[0]).font(.title2)) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 15.0) {
                    ForEach(listeSitesFrance) { siteFrance in
                        NavigationLink {
                            SitesFranceDetailsView(listeSitesFrance: siteFrance)
                        } label: {
                            VStack(alignment: .center, spacing: 10.0) {
                                Image(siteFrance.imageSites)
                                    .resizable()
                                    .frame(width: 125.0, height: 125.0)
                                    .cornerRadius(15)
                                
                                Text(siteFrance.lieux)
                                    .font(.footnote)
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
            }
            .padding(.vertical)
        }
    }
    
    // Italie
    private var italie: some View {
        Section(header: Text(pays[3]).font(.title2)) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 15.0) {
                    ForEach(listeSitesItalie) { siteItalie in
                        NavigationLink {
                            SitesItalieDetailsView(listeSitesItalie: siteItalie)
                        } label: {
                            VStack(alignment: .center, spacing: 10.0) {
                                Image(siteItalie.imageSites)
                                    .resizable()
                                    .frame(width: 125.0, height: 125.0)
                                    .cornerRadius(15)
                                
                                Text(siteItalie.lieux)
                                    .font(.footnote)
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
            }
            .padding(.vertical)
        }
    }
    
    // UK
    private var uk: some View {
        Section(header: Text(pays[2]).font(.title2)) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 15.0) {
                    ForEach(listeSitesUK) { siteUK in
                        NavigationLink {
                            SitesUKDetailsView(listeSitesUk: siteUK)
                        } label: {
                            VStack(alignment: .center, spacing: 10.0) {
                                Image(siteUK.imageSites)
                                    .resizable()
                                    .frame(width: 125.0, height: 125.0)
                                    .cornerRadius(15)
                                
                                Text(siteUK.lieux)
                                    .font(.footnote)
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
            }
            .padding(.vertical)
        }
    }
    
    // USA
    private var usa: some View {
        Section(header: Text(pays[1]).font(.title2)) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 15.0) {
                    ForEach(listeSitesUSA) { siteUSA in
                        NavigationLink {
                            SitesUSADetailsView(listeSitesUsa: siteUSA)
                        } label: {
                            VStack(alignment: .center, spacing: 10.0) {
                                Image(siteUSA.imageSites)
                                    .resizable()
                                    .frame(width: 125.0, height: 125.0)
                                    .cornerRadius(15)
                                
                                Text(siteUSA.lieux)
                                    .font(.footnote)
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
            }
            .padding(.vertical)
        }
    }
}
