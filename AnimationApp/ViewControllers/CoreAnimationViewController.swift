//
//  CoreAnimationViewController.swift
//  AnimationApp
//
//  Created by Вячеслав Кусакин on 23.05.2022.
//

import UIKit

class CoreAnimationViewController: UIViewController {

    @IBOutlet weak var animationView: UIView! {
        didSet { animationView.layer.cornerRadius = 15 }
    }

    @IBAction func animationButtonTouchUp(_ sender: UIButton) {
        animationView.getRandomCoreAnimation()
    }
}
