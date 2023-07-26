//
//  Home.swift
//  Rodents
//
//  Created by Sergey Lukaschuk on 2023-07-25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        List {
            ForEach(rodents) { rodent in
                HStack(spacing: 15) {
                    Color.clear
                        .frame(width: 100, height: 100)
                        .anchorPreference(key: MAnchorKey.self, value: .bounds) { anchor in
                            return [rodent.id: anchor]
                        }
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(rodent.name)
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text(rodent.diet)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .overlayPreferenceValue(MAnchorKey.self) { value in
            GeometryReader { geometry in
                ForEach(rodents) { rodent in
                    if let anchor = value[rodent.id] {
                        let rect = geometry[anchor]
                        ImageView(profile: rodent, size: rect.size)
                            .offset(x: rect.minX, y: rect.minY)
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

