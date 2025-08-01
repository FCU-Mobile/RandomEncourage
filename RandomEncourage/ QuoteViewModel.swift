//
//   QuoteViewModel.swift
//  RandomEncourage
//
//  Created by chrisMini on 2025/7/31.
//

// QuoteViewModel.swift

import Foundation


class QuoteViewModel: ObservableObject {
    @Published var currentQuote: String = "呼吸，慢活"
    @Published var favorites: [String] = []        // 新增收藏清單
    
    /// 隨機選擇一句鼓勵語
    func generateRandomQuote() {
        let allQuotes = QuoteModel.quotes
        if let random = allQuotes.randomElement() {
            currentQuote = random
        }
    }
    
    /// 加入收藏
    func addFavorite() {
        if favorites.contains(currentQuote) {
            // 已收藏 → 移除收藏
            favorites.removeAll { $0 == currentQuote }
        } else {
            // 未收藏 → 加入收藏
            favorites.append(currentQuote)
        }
    }
    
    func clearAllFavorites() {
        favorites.removeAll()
    }
    
}
