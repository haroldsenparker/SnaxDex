//
//  FavoriteButton.swift
//  SnaxDex
//
//  Created by Parker Haroldsen on 10/4/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var snax: Bugsnax
    
    var body: some View {
        Button {
            if isSet {
               guard let bugsnaxIndex = BugsnaxController.shared.favorites.firstIndex(of: snax) else {
                   return
               }
                BugsnaxController.shared.favorites.remove(at: bugsnaxIndex)
            } else {
                BugsnaxController.shared.favorites.append(snax)
            }
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .red : .gray)
        }
    }
    
    var isSet: Bool {
        BugsnaxController.shared.favorites.contains(where: { $0.id == snax.id })
    }
}

////struct FavoriteButton_Previews: PreviewProvider {
// static var previews: some View {
//        FavoriteButton(isSet: .constant(true), snax: <#Binding<Bugsnax>#>)
//    }
//}
