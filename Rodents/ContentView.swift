//
//  ContentView.swift
//  Rodents
//
//  Created by Sergey Lukaschuk on 2023-07-21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedRodent: Rodent?
    @State private var pushView: Bool = false
    
    var body: some View {
        NavigationStack {
            Home(selectedRodent: $selectedRodent, pushView: $pushView)
                .navigationTitle("Rodents")
                .navigationDestination(isPresented: $pushView) {
                    if let selectedRodent {
                        DetailView(rodent: selectedRodent)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
