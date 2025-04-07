//
//  PlaybookUIShowcaseAppApp.swift
//  PlaybookUIShowcaseApp
//
//  Created by meenakshi.madan on 06/04/25.
//

import SwiftUI
import Playbook
import PlaybookUI

@main
struct PlaybookUIShowcaseAppApp: App {

    init(){
        registerAllComponentScenarios(to: Playbook.default)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
