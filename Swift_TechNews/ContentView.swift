//
//  ContentView.swift
//  Swift_TechNews
//
//  Created by Mac on 12/17/20.
//

import SwiftUI

struct ContentView: View {
    //an object from the network manager class
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                    
                }
               
            }
            .navigationBarTitle("Tech News")
        }.onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [
//Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "BullShit"),
//    Post(id: "3", title: "Fuck the world")
//]
