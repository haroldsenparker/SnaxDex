//
//  BugsnaxCell.swift
//  SnaxDex
//
//  Created by Parker Haroldsen on 8/25/22.
//

import SwiftUI

struct BugsnaxCell: View {
    
    let bugsnax: Bugsnax
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(bugsnax.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack {
                    Text(bugsnax.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                        
                    Image(bugsnax.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(colorModel(type: bugsnax.type))
        .cornerRadius(12)
        .shadow(color: colorModel(type: bugsnax.type), radius: 10, x: 0, y: 0)
    }
}




struct BugsnaxCell_Previews: PreviewProvider {
    static var previews: some View {
        BugsnaxCell(bugsnax: mock_snax[0])
    }
}

