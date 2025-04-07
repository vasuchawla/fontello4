//
//  ComponentDetailView.swift
//  PlaybookUIShowcaseApp
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI
import PlaybookUI
import Playbook

struct ComponentDetailView: View {
    let component: Component
    let tmpPlaybook:Playbook
    init(component: Component){
        self.component = component;
        self.tmpPlaybook =  makePlaybookFor(component: component)
    }
    var body: some View {
        PlaybookGallery(title: component.name.rawValue, playbook: self.tmpPlaybook)
//
//        AnyView {
////            VStack(spacing: 24) {
//                
//               
////            }
////            .padding()
//        }
//        .navigationTitle(component.name.rawValue)
    }
    
}
//    var body: some View {
//        let tmpPlaybook =  makePlaybookFor(component: component)
//        
//        
//         
//        ScrollView {
//            VStack(spacing: 24) {
//
//            }
//            .padding()
//        }
//        .navigationTitle(component.name)
//    }




//                PlaybookCatalog(playbook: playbook.default.)
//                PlaybookGallery(title:component.name, playbook: Playbook.default, selectedScenarioID:  component.name)
//                PlaybookGallery(playbook: tmpPlaybook))

                     
//                ForEach(component.scenarios.indices, id: \.self) { index in
//                    component.scenarios[index].content.
////                        .padding()
////                        .background(Color(.systemBackground))
////                        .cornerRadius(12)
////                        .shadow(radius: 4)
//                }
