//
//  ImageView.swift
//  Rodents
//
//  Created by Sergey Lukaschuk on 2023-07-26.
//

import SwiftUI

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

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
