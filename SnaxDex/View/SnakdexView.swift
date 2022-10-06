//
//  BugdexView.swift
//  SnaxDex
//
//  Created by Parker Haroldsen on 8/25/22.
//

import SwiftUI

struct SnakdexView: View {
    @ObservedObject var controller = BugsnaxController.shared
    private var snaxs = [Bugsnax]()
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    @State private var isShowingFavorites = false
    @State var currentBugsnax: [Bugsnax] = []
       
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(currentBugsnax) { bugsnax in
                        NavigationLink(destination: BugsnaxDetailView(bugsnax: bugsnax)) {
                            BugsnaxCell(bugsnax: bugsnax)
                        }
                    }
                }
            }
            .navigationTitle("SnaxDex")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        withAnimation {
                            isShowingFavorites.toggle()
                                updateCurrentBugsnax()
                        }
                    } label: {
                        Text(isShowingFavorites ? "All" : "Favorites")
                    }
                }
            }
            .onAppear {
                updateCurrentBugsnax()
            }
        }
    }
    func updateCurrentBugsnax() {
        if isShowingFavorites {
            self.currentBugsnax = controller.favorites
        } else {
            self.currentBugsnax = controller.bugsnaxs
        }
    }
}

struct SnakdexView_Previews: PreviewProvider {
    static var previews: some View {
        SnakdexView()
    }
}

