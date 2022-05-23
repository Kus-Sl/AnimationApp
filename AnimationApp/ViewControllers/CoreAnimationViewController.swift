//
//  CoreAnimationViewController.swift
//  AnimationApp
//
//  Created by Вячеслав Кусакин on 23.05.2022.
//

import UIKit

class CoreAnimationViewController: UIViewController {

    @IBOutlet weak var animationLabel: UILabel! {
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
