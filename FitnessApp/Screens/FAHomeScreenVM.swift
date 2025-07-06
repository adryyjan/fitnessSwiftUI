//
//  AFHomeScreenVM.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 06/07/2025.
//

import SwiftUI

final class FAHomeScreenVM: ObservableObject {
    @Published var calories: Int = 1350
    @Published var active: Int = 2
    @Published var stand: Int = 5
}
