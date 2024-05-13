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
            
            Text("Friends")
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("Friends")
                    }
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                        Text("Upload")
                    }
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            Text("Notifications")
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Inbox")
                    }
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
            
            Text("Profile")
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
