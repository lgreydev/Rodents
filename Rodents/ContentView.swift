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
                    DetailView(selectedRodent: $selectedRodent, pushView: $pushView)
                }
        }
        .overlayPreferenceValue(MAnchorKey.self) { value in
            GeometryReader { geometry in
                if let selectedRodent, let anchor = value[selectedRodent.id] {
                    let rect = geometry[anchor]
                    ImageView(rodent: selectedRodent, size: rect.size)
                        .offset(x: rect.minX, y: rect.minY)
                        .animation(Animation.snapPoint, value: <#T##Equatable#>)
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
