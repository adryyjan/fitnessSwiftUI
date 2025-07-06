//
//  Activitie.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 06/07/2025.
//

import SwiftUI


struct Activity: Identifiable {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let ammount: String
}

struct MockDataActivity {
    
    static let mockActivities = [
        Activity(id: 1, title: "Todays Steps", subtitle: "Goal 10 000", image: "figure.walk", tintColor: .green, ammount: "8 000"),
        Activity(id: 2, title: "Todays Steps", subtitle: "Goal 10 000", image: "figure.walk", tintColor: .red, ammount: "7 000"),
        Activity(id: 3, title: "Todays Steps", subtitle: "Goal 10 000", image: "figure.walk", tintColor: .blue, ammount: "6 000"),
        Activity(id: 4, title: "Todays Steps", subtitle: "Goal 10 000", image: "figure.walk", tintColor: .yellow, ammount: "4 000")
    ]
}
