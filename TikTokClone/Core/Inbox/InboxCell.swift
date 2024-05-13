// Created by Enes UTKU

import SwiftUI

struct InboxCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                Text("test_user, demo_user and +21 more")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" liked your post. Click here for more info!")
                    .font(.footnote) +
                
                Text(" 2d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Rectangle()
                .foregroundStyle(Color(.systemGray4))
                .frame(width: 48, height: 48)
                .clipShape(.rect(cornerRadius: 5))
        }
        .padding(.horizontal)
    }
}

#Preview {
    InboxCell()
}
