//
//  UserProfile.swift
//  Task_7
//
//  Created by Anna Harris on 06.08.25.
//

import Foundation

struct UserProfile: Identifiable, Decodable {
    let id = UUID()
    let name: String
    let age: Int
    let location: String
    let isPremium: Bool
    
    private enum CodingKeys: String, CodingKey {
            case name, age, location, isPremium
        }
}
