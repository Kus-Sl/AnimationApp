//
//  AnimationModel.swift
//  AnimationApp
//
//  Created by Вячеслав Кусакин on 22.05.2022.
//

struct Animation {
    let animation: String
    let curve: String
    let force: Float
    let delay: Float
    let duration: Float

    var description: String {
    """
     Animation = \(animation)
     Curve = \(curve)
     Force = \(String(format: "%.2f", force))
     Delay = \(String(format: "%.2f", delay))
     Duration = \(String(format: "%.2f", duration))
    """
    }

    static func getAnimation() -> Animation {
        Animation(
            animation: DataManager.shared.randomAnimations
                .randomElement()?.rawValue ?? "pop",
            curve: DataManager.shared.randomCurves
                .randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 0...2),
            delay: Float.random(in: 0...0.5),
            duration: Float.random(in: 0...1.5)
        )
    }
}
