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
    }
}


struct ImageView: View {
    var profile: Rodent
    var size: CGSize
    var body: some View {
        Image(profile.picture)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size.width, height: size.height)
            .clipShape(Circle())
    }
    
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

