// Created by Enes UTKU

import SwiftUI

struct UserStatsView: View {
    let count: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}


#Preview {
    UserStatsView(count: 2, title: "Followers")
}
