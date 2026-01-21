# 🎖️ 自動化頭頂職位標籤系統 (Overhead Rank Display System)

這是一款為 Roblox 開發的高效能玩家身份識別系統。系統能自動偵測玩家加入，並在其角色頭部上方即時生成包含「玩家名稱」與「群組職稱」的 3D UI 標籤，顯著提升遊戲內的組織識別度。

## ✨ 技術亮點

- **全自動生命週期管理**：利用 `CharacterAdded` 事件與生命週期偵測，確保玩家每次重生（Reset/Respawn）後，標籤都能精確地重新加載與綁定。
- **即時數據同步**：整合 Roblox `GetRoleInGroup` API，實時獲取玩家在關聯群組中的最新職位，無需手動輸入數據。
- **優化後的 Adornee 綁定**：透過程式碼動態設定 `Adornee` 屬性，確保 UI 標籤能完美跟隨角色頭部移動，避免位移或閃爍問題。
- **防錯機制 (Safety Checks)**：實作了「即時角色檢查」邏輯。若玩家在腳本運行前已生成角色，系統仍能確保標籤正確加載，提升系統的魯棒性（Robustness）。
- **物件導向設計**：採用克隆預製件（Cloning Prefab）的設計思維，開發者只需在 Studio 中調整 UI 樣式，腳本便會自動套用，實現視覺與邏輯分離。

## 🛠️ 開發環境與 API

- **開發平台**：Roblox Studio
- **腳本語言**：Luau
- **核心功能**：`Player.CharacterAdded`, `GetRoleInGroup`, `Instance:Clone()`

## 📂 檔案結構
- `Server/OverheadRankHandler.lua`: 負責伺服器端的權限檢查與 UI 派發邏輯。

## 📝 備審展示說明
本專案展示了開發者在 **事件驅動編程 (Event-Driven Programming)** 與 **動態實例管理** 上的實作技巧。代碼結構清晰易讀，並考慮到了多種邊際情況（Edge Cases）的處理，展現了對遊戲運行流程（Game Lifecycle）的深度理解。

---
*註：展示代碼中 GROUP_ID 已進行匿名化處理。*
