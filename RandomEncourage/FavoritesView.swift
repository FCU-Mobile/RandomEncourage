// FavoritesView.swift

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var viewModel: QuoteViewModel

    var body: some View {
        List {
            if viewModel.favorites.isEmpty {
                Text("目前沒有收藏").foregroundColor(.gray)
            } else {
                ForEach(viewModel.favorites, id: \.self) { quote in
                    Text(quote)
                        .padding(.vertical, 8)
                }
            }
                            
        }
        .navigationTitle("我的收藏")
    }
}
