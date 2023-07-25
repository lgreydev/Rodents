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
            ForEach(profiles) { profile in
                HStack(spacing: 15) {
                    Image(profile.picture)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(profile.name)
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text(profile.food)
                            .font(.footnote)
                            .foregroundColor(.gray)
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

