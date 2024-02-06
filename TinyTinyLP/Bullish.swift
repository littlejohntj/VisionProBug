//
//  Bullish.swift
//  TinyTinyLP
//
//  Created by Todd Littlejohn on 2/5/24.
//

import Foundation
import RealityKit

struct BullishComponent: Component {
    var up: Bool = true
    var steps: Int = 0
}

class BullishSystem: System {
    
    private static let query = EntityQuery(where: .has(BullishComponent.self) )

    required init(scene: Scene) {
        
    }

    func update(context: SceneUpdateContext) {
        
        let entities = context.scene.performQuery(Self.query)

        entities.forEach { entity in
            
            guard let bullishComponent = entity.components[BullishComponent.self] else { return }
            
            let velocity: SIMD3<Float> = bullishComponent.up ? [0, 0.01, 0] : [0, -0.01, 0]
            
            entity.position += velocity
            
            if bullishComponent.steps > 500 {
                entity.components[BullishComponent.self]?.steps = 0
                entity.components[BullishComponent.self]?.up = !bullishComponent.up
            } else {
                entity.components[BullishComponent.self]?.steps += 1
            }
            
        }
        
        
    }
    
}

