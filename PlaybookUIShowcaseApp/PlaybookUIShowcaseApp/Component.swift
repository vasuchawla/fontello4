//
//  Component.swift
//  PlaybookUIShowcaseApp
//
//  Created by meenakshi.madan on 06/04/25.
//


import SwiftUI
import PlaybookUI
import Playbook
import CustomSwiftUIComponents

struct Component: Identifiable {
    let id = UUID()
    let name: ScenarioCategory
    let scenarios: [ScenarioEntry]
}


struct ScenarioEntry {
    let name: ScenarioTitle
    let view: () -> AnyView
}

let allComponents: [Component] = [

    Component(name: "Button", scenarios: [
        
        ScenarioEntry(name: "Primary") {
            AnyView(CustomButton(title: "Primary", variant: .primary, action: {}))
        },
        ScenarioEntry(name: "Disabled") {
            AnyView(CustomButton(title: "Disabled", variant: .primary,isDisabled:true, action: {}))
        },
                ScenarioEntry(name: "Secondary") {
            AnyView(CustomButton(title: "Secondary", variant: .secondary, action: {}))
        },
                ScenarioEntry(name: "Success") {
            AnyView(CustomButton(title: "Success", variant: .success, action: {}))
        },
                ScenarioEntry(name: "Danger") {
                    AnyView(CustomButton(title: "Success", variant: .danger, action: {}))
        },
                ScenarioEntry(name: "Warning") {
            AnyView(CustomButton(title: "Warning", variant: .warning, action: {}))
        },
                ScenarioEntry(name: "Info") {
            AnyView(CustomButton(title: "Info", variant: .info, action: {}))
        }
    ]),

    Component(name: "Text Field", scenarios: [
                ScenarioEntry(name: "Outlined") {
            AnyView(CustomTextField(text: .constant(""), placeholder: "Outlined", variant: .outlined))
        },
                ScenarioEntry(name: "Filled") {
            AnyView(CustomTextField(text: .constant(""), placeholder: "Filled", variant: .filled))
        },
                ScenarioEntry(name: "Error") {
            AnyView(CustomTextField(text: .constant("Invalid"), placeholder: "Email", variant: .error))
        }
    ]),

    Component(name: "Password Field", scenarios: [
                ScenarioEntry(name: "Default") {
            AnyView(CustomPasswordField(text: .constant("mypassword")))
        }
    ]),

    Component(name: "Text Area", scenarios: [
                ScenarioEntry(name: "Multiline Input") {
            AnyView(CustomTextArea(text: .constant("Some notes..."), placeholder: "Enter notes"))
        }
    ])
    
    // add more components here
]


func registerAllComponentScenarios(to playbook: Playbook) {
    for component in allComponents {
           for entry in component.scenarios {
               playbook.addScenarios(of: component.name) {
                   Scenario(entry.name,layout:.fill, content: entry.view)
               }
           }
       }
}



func makePlaybookFor(component: Component) -> Playbook {
    let playbook = Playbook()
    for entry in component.scenarios {
        playbook.addScenarios(of: ScenarioCategory(rawValue: entry.name.rawValue)) {
        
            Scenario(entry.name, layout:.fill,content: entry.view)
        }
    }

    return playbook
}
