//
//  ContentView.swift
//  Rodents
//
//  Created by Sergey Lukaschuk on 2023-07-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Home()
                .navigationTitle("Rodents")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
