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
                            .font(Font.system(size: 18, weight: .regular, design: .rounded))
                            .padding(.trailing)
                            .padding(.init(top: 1, leading: 1, bottom: 1, trailing: 145))
                    }
                    Text("Location: \(bugsnax.location)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .padding(.trailing)
                        .padding(.init(top: 10, leading: 0, bottom: 2, trailing: 100))
                    
                    Text("Calories: \(bugsnax.calories)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .padding(.init(top: 2, leading: 0, bottom: 2, trailing: 169))
                    
                    
                    Text("Personality: \(bugsnax.personality)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .padding(.init(top: 2, leading: 0, bottom: 2, trailing: 113))
                    
                    Text("Loves: \(bugsnax.loves)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .padding(.init(top: 2, leading: 0, bottom: 2, trailing: 162))
                    
                    Text("Fears: \(bugsnax.fears)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .padding(.init(top: 2, leading: 0, bottom: 2, trailing: 225))
                    
                    Text("Hates: \(bugsnax.hates)")
                        .font(Font.system(size: 20, weight: .regular, design: .rounded))
                        .padding(.init(top: 2, leading: 0, bottom: 2, trailing: 223))
                    
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
