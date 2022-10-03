//
//  BugsnaxDetailView.swift
//  SnaxDex
//
//  Created by Parker Haroldsen on 9/12/22.
//

import SwiftUI

struct BugsnaxDetailView: View {
    
    let bugsnax: Bugsnax
    
    var body: some View {
        ZStack {
            Color.detailBackground
                .ignoresSafeArea()
            
            ScrollView {
                
                Spacer()
            
                Image(bugsnax.image)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .border(Color.black, width: 2)
                
                VStack(spacing: 11.0) {
                    Text(bugsnax.name.capitalized)
                        .font(Font.system(size: 40, weight: .bold, design: .rounded))
                        .padding(.top, 5)
                    
                    Text(bugsnax.type.capitalized)
                        .font(.subheadline).bold()
                        .foregroundColor(.black)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.black.opacity(0.25))
                        )
                    
                    
                    
                    Text(bugsnax.bio)
                        .font(Font.system(size: 17, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                        .padding(.top, 12)
                    
                    if let subtype = bugsnax.subtype {
                        Text("Subtype: \(subtype)")
                            .font(Font.system(size: 20, weight: .regular, design: .rounded))
                            .frame(width: 300, height: 25, alignment: .leading)
                            .multilineTextAlignment(.leading)
                    }
                    
                    Text("Location: \(bugsnax.location)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 25, alignment: .leading)
                    
                    Text("Calories: \(bugsnax.calories)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 25, alignment: .leading)
                    
                    
                    Text("Personality: \(bugsnax.personality)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 25, alignment: .leading)
                    
                    Text("Loves: \(bugsnax.loves)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 25, alignment: .leading)
                    
                    Text("Fears: \(bugsnax.fears)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 25, alignment: .leading)
                    
                    Text("Hates: \(bugsnax.hates)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 25, alignment: .leading)
        
                }
            }
        }
    }
    
    struct BugsnaxDetailView_Previews: PreviewProvider {
        static var previews: some View {
            BugsnaxDetailView(bugsnax: mock_snax[0])
        }
    }
}
