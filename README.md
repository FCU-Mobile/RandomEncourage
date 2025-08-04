# 隨機鼓勵語 App (RandomEncourage)

一款簡潔美觀的 iOS 鼓勵語應用程式，當你需要正能量時，只需輕點一下就能獲得溫暖的鼓勵話語。

## ✨ 功能特色

- 🎲 **隨機鼓勵語生成** - 點擊按鈕獲取隨機的正能量語句
- 💝 **收藏功能** - 將喜歡的鼓勵語加入收藏清單
- 🎨 **隨機背景** - 5 種精美背景圖片隨機切換
- 📱 **分享功能** - 將鼓勵語分享給朋友
- 🎭 **自訂字型** - 使用「晨雨洛雁體」打造獨特視覺體驗

## 📱 螢幕截圖

### 主畫面
- 顯示當前鼓勵語
- 隨機背景圖片
- 獲取新鼓勵語按鈕
- 收藏與分享功能

### 我的收藏
- 查看所有收藏的鼓勵語
- 支援滑動刪除

## 🛠 技術特點

- **框架**: SwiftUI
- **架構**: MVVM (Model-View-ViewModel)
- **資料管理**: @StateObject, @ObservedObject
- **動畫**: SwiftUI Animation
- **導航**: NavigationView + NavigationLink
- **字型**: 自訂 TTF 字型檔案

## 📂 專案結構

```
RandomEncourage/
├── ContentView.swift          # 主視圖
├── FavoritesView.swift        # 收藏頁面
├── QuoteModel.swift           # 鼓勵語資料模型
├── QuoteViewModel.swift       # 商業邏輯處理
├── RandomEncourageApp.swift   # App 入口點
├── ChenYuluoyan-Thin-Monospaced.ttf  # 自訂字型
└── Assets.xcassets/           # 圖片資源
    └── photos/                # 背景圖片 (001-005)
```

## 🚀 如何執行

1. **環境需求**
   - Xcode 14.0 或更新版本
   - iOS 16.0 或更新版本
   - macOS 12.0 或更新版本

2. **安裝步驟**
   ```bash
   git clone https://github.com/你的用戶名/RandomEncourage.git
   cd RandomEncourage
   open RandomEncourage.xcodeproj
   ```

3. **執行專案**
   - 在 Xcode 中選擇目標設備
   - 按下 `Cmd + R` 執行

## 💡 核心功能說明

### 鼓勵語生成
```swift
func generateRandomQuote() {
    let allQuotes = QuoteModel.quotes
    if let random = allQuotes.randomElement() {
        currentQuote = random
    }
}
```

### 收藏系統
```swift
func addFavorite() {
    if favorites.contains(currentQuote) {
        favorites.removeAll { $0 == currentQuote }
    } else {
        favorites.append(currentQuote)
    }
}
```

### 背景切換
```swift
private func changeBackground() {
    if let randomName = photoNames.randomElement() {
        currentBackgroundName = randomName
    }
}
```

## 🎨 設計理念

- **簡約美觀** - 清爽的 UI 設計，專注於內容本身
- **情感連結** - 溫暖的色調和字型營造舒適氛圍
- **互動友善** - 直觀的操作方式，良好的用戶體驗
- **個人化** - 收藏功能讓每個人都能保存專屬的正能量

## 📝 更新日誌

### v1.0.0
- ✅ 基本鼓勵語顯示功能
- ✅ 隨機生成新的鼓勵語
- ✅ 收藏與取消收藏功能
- ✅ 我的收藏頁面
- ✅ 隨機背景切換
- ✅ 分享功能
- ✅ 自訂字型支援

## 🤝 貢獻

歡迎提交 Issue 和 Pull Request！

1. Fork 此專案
2. 建立你的功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交你的更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 開啟 Pull Request

## 📄 授權

此專案採用 MIT 授權條款 - 詳見 [LICENSE](LICENSE) 檔案

## 👨‍💻 作者

**chrisMini** - [GitHub](https://github.com/你的用戶名)

## 🙏 致謝

- 感謝所有提供正能量語句的來源
- 感謝「晨雨洛雁體」字型的設計者
- 感謝 Apple 提供優秀的 SwiftUI 框架

---

如果這個 App 為你帶來了正能量，請給個 ⭐️ 支持一下！
