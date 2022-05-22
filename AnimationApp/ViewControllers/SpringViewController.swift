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


    }

    @IBAction func animationButtonTouchUp(_ sender: UIButton) {

    }
}
