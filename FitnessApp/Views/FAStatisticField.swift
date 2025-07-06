//
//  StatisticField.swift
//  FitnessApp
//
//  Created by Adrian Mazek on 06/07/2025.
//

import SwiftUI

struct FAStatisticField: View {
    
    var title: String
    var value: String
    var color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.callout)
                .bold()
                .foregroundStyle(color)
            
            Text(value)
                .bold()
        }
        .padding(.bottom)    }
}

#Preview {
    FAStatisticField(title: "Test", value: "123", color: .red)
}
