// Created by Enes UTKU

import SwiftUI
import AVKit

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear {
                            playInitialVideoIfNeccesary()
                        }
                }
            }
            .scrollTargetLayout()
        }
        .onAppear {
            player.play()
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeScrollPos(postID: newValue)
        }
    }
    
    func playInitialVideoIfNeccesary() {
        guard 
            scrollPosition == nil,
            let post = viewModel.posts.first,
            player.currentItem == nil else { return }
        
        let item = AVPlayerItem(url: URL(string: post.videoURL)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeScrollPos(postID: String?) {
        guard let currentPost = viewModel.posts.first(where: { $0.id == postID }) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoURL)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
