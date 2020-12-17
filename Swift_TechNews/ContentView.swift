//
//  ContentView.swift
//  Swift_TechNews
//
//  Created by Mac on 12/17/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Tech News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable{
    let id: String
    let title: String
}

let posts = [
Post(id: "1", title: "Hello"),
    Post(id: "2", title: "BullShit"),
    Post(id: "3", title: "Fuck the world")
]
