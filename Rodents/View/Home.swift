//
//  Home.swift
//  Rodents
//
//  Created by Sergey Lukaschuk on 2023-07-25.
//

import SwiftUI

struct Home: View {
    @Binding var selectedRodent: Rodent?
    @Binding var pushView: Bool
    
    var body: some View {
        List {
            ForEach(rodents) { rodent in
                Button {
                    selectedRodent = rodent
                    pushView.toggle()
                } label: {
                    HStack(spacing: 15) {
                        Color.clear
                            .frame(width: 100, height: 100)
                        
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
        .overlayPreferenceValue(MAnchorKey.self) { value in
            GeometryReader { geometry in
                ForEach(rodents) { rodent in
                    if let anchor = value[rodent.id], selectedRodent?.id != rodent.id {
                        let rect = geometry[anchor]
                        ImageView(rodent: rodent, size: rect.size)
                            .offset(x: rect.minX, y: rect.minY)
                    }
                }
            }
        }
    }
}

struct DetailView: View {
    @Binding var selectedRodent: Rodent?
    @Binding var pushView: Bool

    var body: some View {
        if let selectedRodent {
            VStack {
                GeometryReader { geometry in
                    let size = geometry.size
                    
                    Color.clear
                        .anchorPreference(key: MAnchorKey.self, value: .bounds) { anchor in
                            return [selectedRodent .id: anchor]
                        }
                }
                .frame(height: 400)
                .ignoresSafeArea()
                
                Spacer(minLength: 0)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

