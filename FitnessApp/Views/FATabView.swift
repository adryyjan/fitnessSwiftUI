//
//  FATabView.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 03/07/2025.
//

import SwiftUI

struct FATabView: View {
    @State var selectedTab:String = "Home"
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.green]
        
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FAHomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            FAHomeView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Workout")
                }
        }
    }
}

#Preview {
    FATabView()
}
