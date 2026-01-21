--[[
    系統名稱：頭頂職位標籤系統 (Overhead Rank Display)
    功能描述：在玩家角色頭部上方顯示其名稱與群組職稱，增強遊戲內的身分識別。
]]

local GROUP_ID = 000000 -- 設定目標群組 ID

local function applyRankTag(player, character)
    local head = character:WaitForChild("Head")
    
    -- 克隆存放在腳本內的 Rank UI 預製件
    local rankTag = script:FindFirstChild("Rank")
    if rankTag then
        local clone = rankTag:Clone()
        clone.Parent = head
        
        -- 初始化 UI 文字內容
        local frame = clone:WaitForChild("Frame")
        frame:WaitForChild("Name1").Text = player.Name
        frame:WaitForChild("Rank").Text = player:GetRoleInGroup(GROUP_ID)
        
        -- 確保標籤隨角色移動
        clone.Adornee = head
    end
end

game.Players.PlayerAdded:Connect(function(player)
    -- 首次生成時執行
    player.CharacterAdded:Connect(function(character)
        applyRankTag(player, character)
    end)
    
    -- 若玩家已存在角色則立即執行
    if player.Character then
        applyRankTag(player, player.Character)
    end
end)
