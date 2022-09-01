//
//  BugdexView.swift
//  SnaxDex
//
//  Created by Parker Haroldsen on 8/25/22.
//

import SwiftUI


struct SnakdexView: View {
    @ObservedObject var controller = BugsnaxController.shared
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
   
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(controller.bugsnaxs) { bugsnax in
                        BugsnaxCell(bugsnax: bugsnax)
                }
            }
        }
            .navigationTitle("SnaxDex")
        }
    }
}
    
    
struct SnakdexView_Previews: PreviewProvider {
    static var previews: some View {
        SnakdexView()
    }
}

