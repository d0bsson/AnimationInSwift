//
//  AnimationData.swift
//  AnimationInSwift
//
//  Created by Дэвид Бердников on 27.04.2021.
//


struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var labelData: String {
        """
        \(preset)
        \(curve)
        \(String(format: "%.2f", force))
        \(String(format: "%.2f", duration))
        \(String(format: "%.2f", delay))
        """
    }
}

extension Animation {
    
    static func getAnimation() -> Animation {
        
        Animation(preset: AnimationInfo.shared.presets.randomElement() ?? "shake",
                  curve: AnimationInfo.shared.curves.randomElement() ?? "spring",
                  force: Double.random(in: 0.01...0.15),
                  duration: Double.random(in: 0.5...1.0),
                  delay: Double.random(in: 0.01...0.15))
    }
}

