//
//  BugsnaxViewModel.swift
//  SnaxDex
//
//  Created by Parker Haroldsen on 8/29/22.
//

import SwiftUI

final class BugsnaxController: ObservableObject {
    static let shared = BugsnaxController()
    
    @Published var bugsnaxs: [Bugsnax]
    @Published var favorites = [Bugsnax]()
    @Published var favoriteIDs: Set<Bool> = [true, false]

    
    init() {
        let container: SnaxContainer = load("bugsnaxKey.json")
        bugsnaxs = container.snax
        favorites = bugsnaxs.filter {
            favoriteIDs.contains($0.isFavorite)
        }
    }
}


func load<T:Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \(error)")
    }
    
    do {
        let decoder = try JSONDecoder().decode(SnaxContainer.self, from: data)
        return decoder as! T
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self): \(error)")
    }
}



