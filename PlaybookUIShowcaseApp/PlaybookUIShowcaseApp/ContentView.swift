//
//  ContentView.swift
//  PlaybookUIShowcaseApp
//
//  Created by meenakshi.madan on 06/04/25.
//

import SwiftUI
import Playbook
import PlaybookUI
//import CustomSwiftUIComponents

struct ContentView: View {
    
    enum Tab {
           case componentlist
            
           case gallery
       }

       @State
       var tab = Tab.componentlist

//       init() {
//           Playbook.default.add(AllScenarios.self)
//       }
//    
    
    var body: some View {
        
        TabView(selection: $tab) {
            
            ComponentListView(components: allComponents)
                .tag(Tab.componentlist)
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                    Text("Components")
                }
                PlaybookGallery()
                    .tag(Tab.gallery)
                    .tabItem {
                        Image(systemName: "rectangle.grid.3x2")
                        Text("Gallery")
                    }

               
            }

        
        

    }
}

#Preview {
    ContentView()
}
