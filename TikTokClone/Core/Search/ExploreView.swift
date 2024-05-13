// Created by Enes UTKU

import SwiftUI

struct ExploreView: View {
    
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 15, height: 15)
                        
                        TextField(text: $searchText) {
                            HStack {
                                Text("Search")
                                    .font(.footnote)
                            }
                        }
                        .autocorrectionDisabled()
                    }
                    .padding(5)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 5))
                    
                    Image(systemName: "barcode.viewfinder")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 2)
                }
                .padding(.horizontal)
                
                Rectangle()
                    .foregroundStyle(.gray)
                    .frame(height: 180)
                
                TrendingHashtags(trendingIcon: "sparkles", trendingText: "Both Of Us", trendingVideoCount: "5362")
                TrendingHashtags(trendingIcon: "pencil", trendingText: "Your Story", trendingVideoCount: "2431")
                TrendingHashtags(trendingIcon: "person.fill", trendingText: "Love Yourself", trendingVideoCount: "1684")
                TrendingHashtags(trendingIcon: "safari.fill", trendingText: "Discover", trendingVideoCount: "9326")

            }
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
