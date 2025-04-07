//
//  ComponentListView.swift
//  PlaybookUIShowcaseApp
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI
import PlaybookUI

struct ComponentListView: View {
    let components: [Component]
    
    

    var body: some View {
        NavigationView {
            List(components) { component in
                NavigationLink(destination: ComponentDetailView(component: component)) {
                    Text(component.name.rawValue)
                }
            }
            .navigationTitle("Components")
        }
    }
}
