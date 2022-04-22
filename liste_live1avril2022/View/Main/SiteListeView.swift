//
//  SiteListeView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 08/04/2022.
//

import SwiftUI

struct SiteListeView: View {
    
    var listeSites: [CategoriesModel]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listeSites) { listeSite in
                    Section(
                        header: Text("\(listeSite.pays)")
                            .font(.title)
                            .fontWeight(.bold)
                    ) {
                        // listeSite fait référence listeSite de type [CategorieModel]
                        // qui contient la propriété de type SiteTouristiqueModel
                        
                        ForEach(listeSite.sitesTouristiques) { siteTouristique in
                            NavigationLink {
                                DetailView(lieuxDetails: siteTouristique)
                            }
                        
                            label: {
                                HStack(alignment: .center, spacing: 15.0) {
                                    Image(siteTouristique.imageSites)
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                        .cornerRadius(10)
                                        .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 0)
                                    
                                    Text(siteTouristique.lieux)
                                    Spacer()
                                    Image(systemName: "heart")
                                        .onTapGesture {
                                            print("mise en favori")
                                        }
                                    
                                
                                }
                                .padding(.vertical, 5.0)
                            }
                        }
                    }
                }
                .navigationTitle("Guide Touristique 🌍")
            }
            .listStyle(GroupedListStyle())
        }
    }
    
    struct SiteListeView_Previews: PreviewProvider {
        static var previews: some View {
            SiteListeView(listeSites: listeSitesTouristiques)
        }
    }
}
