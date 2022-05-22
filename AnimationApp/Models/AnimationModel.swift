//
//  AnimationModel.swift
//  AnimationApp
//
//  Created by Вячеслав Кусакин on 22.05.2022.
//

import Foundation
import Spring

struct Animation {
    let animation: String
    let curve: String
    let force: CGFloat
    let delay: CGFloat
    let duration: CGFloat


    static func getRandomAnimation() -> Animation {
        let randomAnimation = Spring.AnimationPreset.allCases
            .randomElement()?.rawValue

        let randomCurve = Spring.AnimationCurve.allCases
            .randomElement()?.rawValue

        let randomForce = CGFloat.random(in: 0...2)
        let randomDelay = CGFloat.random(in: 0...0.5)
        let randomDuration = CGFloat.random(in: 0...1.5)


        return Animation(
            animation: randomAnimation ?? "pop",
            curve: randomCurve ?? "easeIn",
            force: randomForce,
            delay: randomDelay,
            duration: randomDuration
        )
    }
}
