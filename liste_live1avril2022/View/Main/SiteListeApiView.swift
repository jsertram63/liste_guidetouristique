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
                        HStack(alignment: .center) {
                            VStack(alignment: .leading) {
                                HStack(alignment: .center, spacing: 50.0) {
                                    // passage de la vue URLImage construite plus bas qui prend en paramètre
                                    URLImage(urlString: site.photo)
                                    
                                    Image(systemName: "heart")
                                        .frame(width: 15.0, height: 15.0)
                                        .font(.headline)
                                        .padding(10.0)
                                        .foregroundColor(Color.brown)
                                        .background(.thickMaterial)
                                        .cornerRadius(10)
                                        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 0)
                                }
                                
                                Text(site.nom)
                            }
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

/** Vue Image utilisée dans SiteListeApiView */

struct URLImage: View {
    let urlString: String
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data){
            Image(uiImage: uiimage)
                .resizable()
                .frame(width: 75, height: 50)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 0)
        } else {
            Image(systemName: "photo")
                .resizable()
                .frame(width: 75, height: 50)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.5), radius: 3, x: 0, y: 0)
                .onAppear {
                    fetchData()
                }
        }
    }
    
    // fonction de récupération de l'image avec url
    private func fetchData(){
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _ , error in
            self.data = data
        }
        task.resume()
    }
}

struct SiteListeApiView_Previews: PreviewProvider {
    static var previews: some View {
        SiteListeApiView()
    }
}
