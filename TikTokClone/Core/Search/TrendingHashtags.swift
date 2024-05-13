// Created by Enes UTKU

import SwiftUI

struct TrendingHashtags: View {
    
    @State var trendingIcon: String
    @State var trendingText: String
    @State var trendingVideoCount: String
    
    var body: some View {
        HStack {
            Circle()
                .strokeBorder(Color.gray.opacity(0.2),lineWidth: 1)
                .frame(width: 40, height: 40)
                .overlay {
                    Image(systemName: "\(trendingIcon)")
                }
            VStack(alignment: .leading) {
                Text("\(trendingText)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Trending Hashtag")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: {
                print("DEBUG: Other Videos")
            }, label: {
                HStack {
                    Text("\(trendingVideoCount)")
                    Image(systemName: "chevron.right")
                }
                .foregroundStyle(.black)
                .font(.caption2)
                .padding(4)
                .background(.gray.opacity(0.1))
                .clipShape(.rect(cornerRadius: 2))
            })
            
            
        }
        .padding()
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<5) { explorevideos in
                    Rectangle()
                        .foregroundStyle(.gray)
                        .frame(width: 150, height: 200)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    TrendingHashtags(trendingIcon: "pencil", trendingText: "Your Story", trendingVideoCount: "9832")
}
