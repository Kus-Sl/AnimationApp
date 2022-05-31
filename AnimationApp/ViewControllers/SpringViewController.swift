//
//  SpringViewController.swift
//  AnimationApp
//
//  Created by Вячеслав Кусакин on 22.05.2022.
//

import Spring
class SpringViewController: UIViewController {

    @IBOutlet weak var animationLabel: SpringLabel! {
        didSet {
            animationLabel.layer.masksToBounds = true
            animationLabel.layer.cornerRadius = 15
        }
    }

    private var randomAnimation = Animation.getAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = randomAnimation.description
    }

    @IBAction func animationButtonTouchUp(_ sender: UIButton) {
        animationLabel.text = randomAnimation.description
        setAnimationParameters(for: animationLabel, by: randomAnimation)

        animationLabel.animate()

        randomAnimation = Animation.getAnimation()
        sender.setTitle(randomAnimation.animation, for: .normal)
    }

    private func setAnimationParameters(for element: Springable, by animation: Animation) {
        element.animation = animation.animation
        element.curve = animation.curve
        element.force = CGFloat(animation.force)
        element.delay = CGFloat(animation.delay)
        element.duration = CGFloat(animation.duration)
    }
}
