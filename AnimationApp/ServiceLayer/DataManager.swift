//
//  DataManager.swift
//  AnimationApp
//
//  Created by Вячеслав Кусакин on 24.05.2022.
//

import Foundation
import Spring

struct DataManager {

    static let shared = DataManager()

    let randomAnimations = Spring.AnimationPreset.allCases
    let randomCurves = Spring.AnimationCurve.allCases

    init() {}
}
