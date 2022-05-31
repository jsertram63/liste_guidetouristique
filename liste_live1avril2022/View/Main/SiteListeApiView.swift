//
//  SiteListeApiView.swift
//  liste_live1avril2022
//
//  Created by Lunack on 20/05/2022.
//

import SwiftUI

struct SiteListeApiView: View {
    
    @StateObject var viewModel = SiteViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.sites, id: \.self ) { site in
                Section(
                    header: Text("\(site.pays)")
                        .font(.title3)
                        .fontWeight(.bold)
                ) {
                    NavigationLink {
                        //
                    } label: {
                        HStack(alignment: .center, spacing: 10.0) {
                            // passage de la vue URLImage construite plus bas qui prend en paramètre
                            // URLImage(urlString: site.photo)
                            AsyncImage(url: URL(string: "\(site.photo)")) { image in
                                image.resizable()
                            } placeholder: {
                                Color.brown
                            }
                            .frame(width: 125, height: 100)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 0)
                            .overlay(alignment: .topLeading) {
                                Image(systemName: "heart")
                                    .frame(width: 10.0, height: 10.0)
                                    .font(.headline)
                                    .padding(8.0)
                                    .foregroundColor(Color.brown)
                                    .background(
                                        Circle()
                                            .fill(Color.white)
                                    )
                                    .cornerRadius(5)
                            }
                            
                            Text(site.nom)
                        }
                        .padding(.vertical, 10.0)
                    }
                }
            }
            // Donne le style de liste
            .listStyle(GroupedListStyle())
            // Donne un titre à la navigationView
            .navigationTitle("Guide Touristique 🌍")
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
            // Au chargement utilise la fonction de récupération des données
            .onAppear {
                viewModel.fetchSites()
            }
        }
    }
}

struct SiteListeApiView_Previews: PreviewProvider {
    static var previews: some View {
        SiteListeApiView()
    }
}
