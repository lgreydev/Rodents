//
//  ImageView.swift
//  Rodents
//
//  Created by Sergey Lukaschuk on 2023-07-26.
//

import SwiftUI

struct ImageView: View {
    var rodent: Rodent
    var size: CGSize
    var body: some View {
        Image(rodent.picture)
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
