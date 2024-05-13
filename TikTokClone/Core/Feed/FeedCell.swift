// Created by Enes UTKU

import SwiftUI

struct FeedCell: View {
    
    let post: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                    .fill(.gray)
                    .containerRelativeFrame([.horizontal, .vertical])
                    .overlay {
                        Text("Post \(post)")
                            .foregroundStyle(.white)
                    }
            
            VStack {
                Spacer()
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("@username")
                            .fontWeight(.semibold)
                        
                        Text("This is my post description!")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 28) {
                        
                    Button(action: {
                        print("DEBUG: Like Button")
                    }, label: {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundStyle(.white)
                    })
                        
                    Button(action: {
                        print("DEBUG: Comment Button")
                    }, label: {
                        Image(systemName: "ellipsis.bubble.fill")
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundStyle(.white)
                    })
                        
                    Button(action: {
                        print("DEBUG: Bookmark Button")
                    }, label: {
                        Image(systemName: "bookmark.fill")
                            .resizable()
                            .frame(width: 22, height: 28)
                            .foregroundStyle(.white)
                    })
                        
                    Button(action: {
                        print("DEBUG: Share Button")
                    }, label: {
                        Image(systemName: "arrowshape.turn.up.right.fill")
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundStyle(.white)
                    })
                        
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    FeedCell(post: 1)
}
