//
//  PostData.swift
//  Swift_TechNews
//
//  Created by Mac on 12/17/20.
//

import Foundation


struct Results: Decodable{
    let hits: [Post]
}
//for a an object to be identifiable it must have a property called ID i.e identifiable protocol
struct Post:Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
