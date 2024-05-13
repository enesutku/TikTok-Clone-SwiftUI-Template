import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videoUrls  = [
        "https://cdn.discordapp.com/attachments/1231369612420059167/1239623925164675194/Snaptik.app_7226469547300146433.mp4?ex=6643993e&is=664247be&hm=71eff62f24b11f72b48421474371802a1bb574747187c3b606767f3e485ab736&",
        "https://cdn.discordapp.com/attachments/1231369612420059167/1239623924208242779/Snaptik.app_7196351286332099883.mp4?ex=6643993e&is=664247be&hm=e4f659ed88a3e30c4620e80da99bc1a077682abeff9070e7a346fcc1e39e1852&",
        "https://cdn.discordapp.com/attachments/1231369612420059167/1239623923436355745/Snaptik.app_7111519054262734123.mp4?ex=6643993e&is=664247be&hm=e13c9f99728cb5a6469731be90bfde652e971137efd2640d6338f6584df5d8e0&",
        "https://cdn.discordapp.com/attachments/1231369612420059167/1239623922954145904/Snaptik.app_7108785743597784326.mp4?ex=6643993e&is=664247be&hm=ace7c59ad2150bce83fb3a5bb077aa8522338f0e7d475128d2abdac12e5bc4bd&"
    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoURL: videoUrls[0]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[1]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[2]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[3])
        ]
    }
}
