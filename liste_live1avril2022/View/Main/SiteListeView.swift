//
//  SiteListeView.swift
//  liste_live1avril2022
//
//  Created by Pierric Marye on 08/04/2022.
//

import SwiftUI

struct SiteListeView: View {
    
    @EnvironmentObject private var sitesVM: SitesTouristiquesViewModel
    
    @State var triFavoris = false
    
    var body: some View {
        NavigationView {
            List {
                // listeSite fait référence listeSite de type [CategorieModel]
                // qui contient la propriété de type SiteTouristiqueModel
                ForEach(sitesVM.sitesTouristiques) { listeSite in
                    Section(
                        header: Text("\(listeSite.pays)")
                            .font(.title)
                            .fontWeight(.bold)
                    ) {
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
            }
            // Donne le style de liste
            .listStyle(GroupedListStyle())
            // Donne un titre à la navigationView
            .navigationTitle("Guide Touristique 🌍")
            // Permet d'ajouter des vues textes, images, ... intégrées dans la navigationTitle
            .navigationBarItems(
                leading:
                    Button(action: {
                        //
                    }, label: {
                        Text("Favoris")
                    }),
                
                trailing: Button(action: {
                        //
                    }, label: {
                        Text("Ajouter")
                    })
            )
        }
    }
    
    struct SiteListeView_Previews: PreviewProvider {
        static var previews: some View {
            SiteListeView()
                .environmentObject(SitesTouristiquesViewModel())
        }
    }
}
