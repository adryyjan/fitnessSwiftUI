//
//  FAHomeView.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 03/07/2025.
//

import SwiftUI



struct FAHomeView: View {
    
    
    @StateObject var viewModel = FAHomeScreenVM()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading) {
                    HStack {
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            FAStatisticField(title: "Kalorie", value: "\(viewModel.calories)",color: .red)
                            
                            FAStatisticField(title: "Aktywny", value: "\(viewModel.active) min", color: .green)
                            
                            FAStatisticField(title: "Stand", value: "\(viewModel.stand) godizny", color: .blue)
                            
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgresCircleView(progress: $viewModel.calories, color: .red, goal: 1600)
                            
                            ProgresCircleView(progress: $viewModel.active, color: .green, goal: 2)
                                .padding(.all, 20)
                            ProgresCircleView(progress: $viewModel.stand, color: .blue, goal: 8)
                                .padding(.all, 40)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        
                        Text("Fitness activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button {
                            print("cloick")
                        } label: {
                            Text("Show details")
                                .padding(.all, 10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .clipShape(.buttonBorder)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(MockDataActivity.mockActivities) { activity in
                            FAActivityCard(activity: activity)
                        }
                    }
                    
                    HStack {
                        
                        Text("Ostatnie ćwicznia")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show details")
                                .padding(.all, 10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .clipShape(.buttonBorder)
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack{
                        ForEach(MockDataWorkout.mockWorkouts) { workout in
                            FAWorkoutCard(workout: workout)
                        }
                    }
                    .padding(.bottom)
                }
            }
            .navigationTitle("Fitness App")
        }
        .navigationTitle("Fitness App")
    }
}

#Preview {
    FAHomeView()
}
