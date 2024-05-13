// Created by Enes UTKU

import SwiftUI
import AVKit

struct FeedCell: View {
    
    let post: Post
    var player: AVPlayer
    
    init(post: Post, player: AVPlayer) {
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                    .containerRelativeFrame([.horizontal, .vertical])
            
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
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(Color(.systemGray2))
                        
                    Button(action: {
                        print("DEBUG: Like Button")
                    }, label: {
                        VStack {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                            
                            Text("27K")
                                .font(.caption)
                                .foregroundStyle(.white)
                                .bold()
                        }
                    })
                        
                    Button(action: {
                        print("DEBUG: Comment Button")
                    }, label: {
                        VStack {
                            Image(systemName: "ellipsis.bubble.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                            
                            Text("135")
                                .font(.caption)
                                .foregroundStyle(.white)
                                .bold()
                        }
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
                        
                    Button(action: {
                        print("DEBUG: Sound Button")
                    }, label: {
                        Image("discIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.white)
                        })
                        
                    }
                }
                .padding(.bottom, 80)
                .padding()
            }
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoURL: ""), player: AVPlayer())
}
