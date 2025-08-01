import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = QuoteViewModel()
    
    // 背景圖檔名稱列表（對應 Assets.xcassets → photos 內的每張圖片）
      private let photoNames = ["001", "002", "003", "004", "005"]
      @State private var currentBackgroundName = "003" // 初始背景
      
    // 隨機更換背景
    private func changeBackground() {
        if let randomName = photoNames.randomElement() {
            currentBackgroundName = randomName
        }
    }
    
    
    var body: some View {
        NavigationView {
            ZStack {
                // 背景圖片
                Image(currentBackgroundName)  // 這裡填入你的圖片名稱（需已加入 Assets.xcassets）
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack(spacing: 40) {
                    Spacer()
                    
                    // 顯示鼓勵語
                    Text(viewModel.currentQuote)
                        .font(.custom("ChenYuluoyan-Thin-Monospaced", size: 64))
                          .foregroundColor(.white)
                          .multilineTextAlignment(.center)
                          .lineLimit(nil)
                          .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    // 生成按鈕
                    Button(action: {
                        viewModel.generateRandomQuote()
                    }) {
                        Text("獲取鼓勵語")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 25)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(36)
                    }
                    
                    // 新增分享與收藏按鈕排成一排
                    HStack(spacing: 60) {
                        Button(action: {
                            // 待實作分享功能
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                        
                        Button(action: {
                            // 收藏功能：加入當前鼓勵語到 favorites
                            viewModel.addFavorite()
                        }) {
                            Image(systemName: "heart")
                                .font(.largeTitle)
                                .foregroundColor(viewModel.favorites.contains(viewModel.currentQuote) ? .red : .white)
                        }
                    }
                    .padding(.top, 20)
                    
                    Spacer()
                    // 新增最下方兩個按鈕
                    HStack(spacing: 40) {
                        NavigationLink(destination: FavoritesView(viewModel:viewModel)) {
                         
                            Text("我的收藏")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(Color.gray.opacity(0.5))
                                .cornerRadius(8)
                        }
                        
                        Button(action: {
                            changeBackground()
                        }) {
                            Text("更換主題")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(Color.gray.opacity(0.5))
                                .cornerRadius(8)
                            
                        }
                    }
                    .padding(.bottom, 30)
                }
                .padding()
            }
        }
    }
}
   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
   }
