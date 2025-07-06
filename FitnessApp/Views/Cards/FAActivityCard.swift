//
//  FAActivityCard.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 06/07/2025.
//

import SwiftUI



struct FAActivityCard: View {
    
    @State var activity: Activity
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .cornerRadius(15)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(activity.tintColor.opacity(0.3))
                }
                Text(activity.ammount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    FAActivityCard(activity: Activity(id: 1, title: "Todays Steps", subtitle: "Goal 10 000", image: "figure.walk", tintColor: .green, ammount: "8 000"))
}
