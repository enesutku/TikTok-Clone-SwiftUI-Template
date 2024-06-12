// Created by Enes UTKU

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<10) { userImages in
                            VStack {
                                    Image(systemName: "person.circle.fill")
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                        .foregroundStyle(Color(.systemGray4))
                                        .padding(.bottom, 5)
                                Text("Username")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                    .padding()
                    .padding(.bottom)
                }
                
                VStack {
                    ForEach(0 ..< 8) { notification in
                    InboxCell()
                    }
                    .padding(.bottom, 5)
                    
                    Divider()
                    
                    LazyVStack(spacing: 16) {
                        ForEach(0 ..< 5) { user in
                            UserCell()
                                .padding(.horizontal)
                        }
                    }
                    .padding(.top)
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
