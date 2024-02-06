//
//  TinyTinyLPApp.swift
//  TinyTinyLP
//
//  Created by Todd Littlejohn on 2/5/24.
//

import SwiftUI

@main
struct TinyTinyLPApp: App {
    
    init() {
        BullishSystem.registerSystem()
        BullishComponent.registerComponent()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
