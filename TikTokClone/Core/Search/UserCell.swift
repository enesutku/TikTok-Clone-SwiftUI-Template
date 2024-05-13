// Created by Enes UTKU

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray4))
            
            VStack(alignment: .leading, content: {
                Text("Test User")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Popular Now")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            })
            
            Spacer()
            
            HStack(spacing: 14) {
                Text("Follow")
                    .frame(width: 100, height: 30)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .background(.pink)
                    .clipShape(.rect(cornerRadius: 5))
                
                Image(systemName: "xmark")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    UserCell()
}
