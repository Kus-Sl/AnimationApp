//
//  Extension.swift
//  AnimationApp
//
//  Created by Вячеслав Кусакин on 24.05.2022.
//

import Foundation
import UIKit

extension UIView {
    func getRandomCoreAnimation() {
        guard let animation = CoreAnimationsPreset.allCases.randomElement()
        else { return }

        switch animation {
        case .slideDown:
            UIView.animate(
                withDuration: 1,
                delay: 0,
                usingSpringWithDamping: 0.5,
                initialSpringVelocity: 0.1,
                options: []) {
                    self.frame.origin.y -= 200
                }

        case .round:
            let animation = CABasicAnimation(keyPath: "cornerRadius")
            animation.toValue = self.frame.origin.y
            animation.duration = 2
            animation.autoreverses = true

            layer.add(animation, forKey: nil)

        case .pulsate:
            let animation = CASpringAnimation(keyPath: "transform.scale")
            animation.fromValue = 0.95
            animation.toValue = 1
            animation.initialVelocity = 0.5
            animation.damping = 1
            animation.duration = 0.6
            animation.autoreverses = true
            animation.repeatCount = 2

            layer.add(animation, forKey: nil)

        case .fade:
            let animation = CABasicAnimation(keyPath: "opacity")
            animation.fromValue = 1
            animation.toValue = 0
            animation.duration = 0.5
            animation.autoreverses = true

            layer.add(animation, forKey: nil)

        case .swing:
            let animation = CAKeyframeAnimation(keyPath: "transform.rotation")
            animation.values = [0, 1.2, -1.2, 0.5, -0.5, 0]
            animation.keyTimes = [0, 0.250, 0.4, 0.6, 0.750, 1]
            animation.isAdditive = true
            animation.duration = 1.5

            layer.add(animation, forKey: nil)

        case .flasher:
            let animation = CAKeyframeAnimation(keyPath: "backgroundColor")
            animation.values = [
                UIColor.systemMint.cgColor,
                UIColor.systemOrange.cgColor,
                UIColor.systemPink.cgColor
            ]
            animation.keyTimes = [0, 0.5, 1]
            animation.duration = 0.3
            animation.autoreverses = true
            animation.repeatCount = 5

            layer.add(animation, forKey: nil)
        }
    }

    enum CoreAnimationsPreset: CaseIterable {
        case slideDown
        case round
        case pulsate
        case fade
        case swing
        case flasher
    }
}
