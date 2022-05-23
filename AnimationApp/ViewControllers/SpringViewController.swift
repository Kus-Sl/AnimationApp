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

    override func viewDidLoad() {
        super.viewDidLoad()

        setAnimation(for: animationLabel, by: Animation.getAnimation())
        showRandomAnimationParameters(for: animationLabel)
    }


/* Здесь обнаружил, что в методе animate() есть код, который через какое-то сбегающее замыкание ресетит все параметры анимации.
 Побороть это замыкание у меня не получилось, поэтому сделал такую ловушку через if для самого первого нажатия кнопки.
 */
    @IBAction func animationButtonTouchUp(_ sender: UIButton) {
        if animationLabel.animation != "" {
            animationLabel.animate()
            setTitleForAnimationButton(sender)
        }

        setAnimation(
            for: animationLabel,
            by: Animation.getAnimation(),
            by: sender.currentTitle
        )

        showRandomAnimationParameters(for: animationLabel)
        animationLabel.animate()

        setTitleForAnimationButton(sender)
    }

    private func setAnimation(for element: Springable, by parameters: Animation, by name: String? = nil ) {
        name != nil
        ? (element.animation = name ?? "pop")
        : (element.animation = parameters.animation)

        element.curve = parameters.curve
        element.force = parameters.force
        element.delay = parameters.delay
        element.duration = parameters.duration
        }

    private func showRandomAnimationParameters(for label: SpringLabel) {
        label.text = """
         Animation = \(label.animation)
         Curve = \(label.curve)
         Force = \(String(format: "%.2f", label.force))
         Delay = \(String(format: "%.2f", label.delay))
         Duration = \(String(format: "%.2f", label.duration))
        """
    }

    private func setTitleForAnimationButton(_ sender: UIButton) {
        sender.setTitle(Animation.getAnimation().animation, for: .normal)
    }
}
