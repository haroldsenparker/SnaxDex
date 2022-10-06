//
//  Snax.swift
//  SnaxDex
//
//  Created by Parker Haroldsen on 8/29/22.
//

import Foundation
import SwiftUI

struct SnaxContainer: Decodable {
    let snax: [Bugsnax]
}

struct Bugsnax: Codable, Identifiable, Equatable {
    let id: String
    let image: String
    let name: String
    let bio: String
    let location: String
    let type: String
    let subtype: String?
    let personality: String
    let calories: Int
    let loves: String
    let hates: String
    let fears: String
    var isFavorite: Bool
}


let mock_snax: [Bugsnax] = [
    .init(id: "0", image: "Aggroll",name: "Aggroll", bio: "The box protects it's body. Perhaps it can be grappled away.", location: "Frosted Peak", type: "Meaty", subtype: "N/A", personality: "Aggressive", calories: 62800, loves: "Hot Sauce", hates: "N/A", fears: "N/A", isFavorite: false),
    .init(id: "1", image: "Baby Cakelegs", name: "Baby Cakelegs", bio: "Recently cut from the cake. They seem to be seeking out their master.", location: "Frosted Peak", type: "Sweet", subtype: "Frosty", personality: "Naive", calories: 56000, loves: "N/A", hates: "N/A", fears: "N/A", isFavorite: false),
    .init(id: "2", image: "Banopper", name: "Banopper", bio: "Frosted Peak", location: "Frosted Peak", type: "Fruity", subtype: "N/A", personality: "Evasive", calories: 10500, loves: "Chocolate, PB", hates: "N/A", fears: "N/A", isFavorite: false)
]

func colorModel(type: String) -> Color {
    switch type {
    case "Meaty": return .meatyRed
    case "Sweet": return .sweetPink
    case "Fruity": return .fruityYellow
    case "Green": return .greenGreens
    case "Cheesy": return .cheesyOrange
    case "Normal": return .normalGrey
    default: return .normalGrey
}
}



