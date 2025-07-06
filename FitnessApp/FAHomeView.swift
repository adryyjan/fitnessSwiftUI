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
            VStack {
                Text("Welcome to Fitness App!")
                    .font(.largeTitle)
                    .padding()
                HStack {
                    Spacer()
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Kalorie")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("AKtywny")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.green)
                            
                            Text("52 min")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.blue)
                            
                            Text("8 godzin")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        
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
            }
        }
    }
}

#Preview {
    FAHomeView()
}
