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
            
            List {
             Text("Hello")
                Text("Good bye World")
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
