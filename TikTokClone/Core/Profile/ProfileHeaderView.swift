// Created by Enes UTKU

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("@test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing: 16) {
                UserStatsView(count: 7, title: "Following")
                UserStatsView(count: 5, title: "Followers")
                UserStatsView(count: 42, title: "Likes")
            }
            
            Button(action: {
                
            }, label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 5))
            })
            
            Divider()
            
        }
    }
}

#Preview {
    ProfileHeaderView()
}
