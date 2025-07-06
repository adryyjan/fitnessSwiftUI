//
//  FAHomeView.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 03/07/2025.
//

import SwiftUI



struct FAHomeView: View {
    @State var calories: Int = 700
    @State var active: Int = 1
    @State var stand: Int = 4
    
    
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack(alignment: .leading) {
                
                Text("Welcome to Fitness App!")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        FAStatisticField(title: "Kalorie", value: "124 kcal",color: .red)
                        
                        FAStatisticField(title: "Aktywny", value: "52 min", color: .green)
                        
                        FAStatisticField(title: "Stand", value: "8 godzin", color: .blue)
   
                    }
                    
                    Spacer()
                    
                    ZStack {
                        ProgresCircleView(progress: $calories, color: .red, goal: 1600)
                            
                        ProgresCircleView(progress: $active, color: .green, goal: 2)
                            .padding(.all, 20)
                        ProgresCircleView(progress: $stand, color: .blue, goal: 8)
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
                    ForEach(MockData.mockActivities) { activity in
                        FAActivityCard(activity: activity)
                    }
                }
            }
        }
    }
}

#Preview {
    FAHomeView()
}
