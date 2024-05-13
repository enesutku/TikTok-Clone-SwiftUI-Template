// Created by Enes UTKU

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    VStack {
                        Image(systemName: "safari")
                        Text("Explore")
                    }
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Spacer()
                        Image("tiktok-upload")
                    }
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble.fill")
                        Text("Inbox")
                    }
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
            
            CurrentUserProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
                .onAppear { selectedTab = 4 }
                .tag(4)
            
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
