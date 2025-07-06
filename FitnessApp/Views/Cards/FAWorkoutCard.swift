//
//  FAWorkoutCard.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 06/07/2025.
//

import SwiftUI

struct FAWorkoutCard: View {
    
    @State var workout: Workout
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundStyle(workout.titntColor)
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            
            VStack {
                HStack {
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                    Text(workout.duration)
                        .font(.caption)
                }
                
                HStack {
                    Text(workout.date)
                    
                     Spacer()
                    
                    Text(workout.calories)
                }
            }
                
        }
        .padding()
    }
}

#Preview {
    FAWorkoutCard(workout: Workout(id: 1, title: "test", image: "figure.run", titntColor: .red, duration: "51 min", date: "Aug 3", calories: "200 kcla"))
}
