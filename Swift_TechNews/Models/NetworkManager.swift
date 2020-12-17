//
//  NetworkManager.swift
//  Swift_TechNews
//
//  Created by Mac on 12/17/20.
//

import Foundation
//Observable object allows a class to start broadcasting one or many of its  properties to any interested party
class NetworkManager: ObservableObject{
    //published property
   @Published var posts = [Post]()
    func fetchData(){
        if  let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async{
                                self.posts = results.hits
                            }
                           
                            
                        } catch{
                           print(error)
                        }
                    }
                }
                
            }
            task.resume()
        }
    }
}
