//
//  SiteListeApiView.swift
//  liste_live1avril2022
//
//  Created by Lunack on 20/05/2022.
//

import SwiftUI


struct URLImage: View {
    let urlString:String
    @State var data:Data?
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data){
            Image(uiImage:uiimage)
                .resizable()
                .frame(width: 130, height: 70)
                .aspectRatio( contentMode: .fill)
                .background(Color.gray)
        }else  {
            Image(systemName: "photo")
                .resizable()
                .frame(width: 130, height: 70)
                .aspectRatio( contentMode: .fill)
                .background(Color.gray)
                .onAppear {
                    fetchData()
               }
        }
    }
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

struct SiteListeApiView: View {
    
    @StateObject var viewModel = SiteViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.sites, id:\.self){ site in
                    HStack {
                        URLImage(urlString:site.photo)
                        Text(site.nom)
                    }
                    
                }
                   
            }.onAppear {
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
