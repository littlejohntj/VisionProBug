//
//  ImmersiveView.swift
//  TinyTinyLP
//
//  Created by Todd Littlejohn on 2/5/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            
            let material = SimpleMaterial(color: .blue, isMetallic: false)
            let mesh = MeshResource.generateSphere(radius: 0.1)
            let entity = ModelEntity(mesh: mesh, materials: [material])
            entity.components[BullishComponent.self] = BullishComponent()
            content.add(entity)
            
        }
    }
}

#Preview(immersionStyle: .mixed) {
    ImmersiveView()
}
