//
//  Workout.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 06/07/2025.
//

import SwiftUI

struct Workout: Identifiable {
    let id: Int
    let title: String
    let image: String
    let titntColor: Color
    let duration: String
    let date: String
    let calories: String
}

struct mockDataWorkout {
    static let mockWorkouts = [
        Workout(id: 1, title: "test", image: "figure.run", titntColor: .red, duration: "51 min", date: "Aug 3", calories: "200 kcla"),
        Workout(id: 2, title: "test", image: "figure.run", titntColor: .blue, duration: "31 min", date: "Aug 3", calories: "142 kcla"),
        Workout(id: 3, title: "test", image: "figure.run", titntColor: .cyan, duration: "21 min", date: "Aug 3", calories: "321 kcla"),
        Workout(id: 4, title: "test", image: "figure.run", titntColor: .green, duration: "15 min", date: "Aug 3", calories: "123 kcla")
        ]
}
