local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ʙʟᴏx ʟᴀʙ 🧪 | ʙʀᴏᴏᴋʜᴀᴠᴇɴ ᴠɪᴘ",
   LoadingTitle = "ᴀᴛᴜᴀʟɪᴢᴀɴᴅᴏ ᴇᴄᴏssɪsᴛᴇᴍᴀ...",
   LoadingSubtitle = "ʙʏ ʙʟᴏx ʟᴀʙs",
   ConfigurationSaving = {Enabled = true, FolderName = "BloxLab", FileName = "Main"}
})

-- [[ CATEGORIA: TROLLS & PLAYERS ]]
local TrollTab = Window:CreateTab("ᴛʀᴏʟʟs", 4483362458)
local PlayerList = {}
for _, v in pairs(game.Players:GetPlayers()) do table.insert(PlayerList, v.Name) end

local SelectedPlayer = ""

TrollTab:CreateDropdown({
   Name = "sᴇʟᴇᴄɪᴏɴᴀʀ ᴊᴏɢᴀᴅᴏʀ",
   Options = PlayerList,
   CurrentOption = {""},
   MultipleOptions = false,
   Callback = function(Option) SelectedPlayer = Option[1] end,
})

TrollTab:CreateButton({
    Name = "ᴠᴏᴀʀ ᴘʟᴀʏᴇʀ", 
    Callback = function() 
        print("Executando voo em: "..SelectedPlayer) 
    end
})

TrollTab:CreateButton({
    Name = "ғʀᴇᴇᴢᴇ ᴘʟᴀʏᴇʀ", 
    Callback = function() 
        print("Congelando movimentos de: "..SelectedPlayer) 
    end
})

TrollTab:CreateButton({
    Name = "ᴛᴘ ᴘʟᴀʏᴇʀ", 
    Callback = function() 
        print("Teleportando alvo: "..SelectedPlayer) 
    end
})

TrollTab:CreateButton({
    Name = "ᴍᴜᴛᴇ ᴘʟᴀʏᴇʀ", 
    Callback = function() 
        print("Silenciando: "..SelectedPlayer) 
    end
})

TrollTab:CreateButton({
    Name = "ʙᴀɴ ᴘʟᴀʏᴇʀ", 
    Callback = function() 
        print("Banimento aplicado em: "..SelectedPlayer) 
    end
})

-- [[ CATEGORIA: MOVIMENTAÇÃO ]]
local MoveTab = Window:CreateTab("ᴍᴏᴠɪᴍᴇɴᴛᴀçãᴏ", 4483362458)
MoveTab:CreateSlider({
   Name = "sᴘᴇᴇᴅ (ᴠᴇʟᴏᴄɪᴅᴀᴅᴇ)",
   Range = {16, 500},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value) 
       if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
       end
   end,
})

-- [[ CATEGORIA: VIP & GAME PASS ]]
local VipTab = Window:CreateTab("ᴠɪᴘ & ᴘᴀssᴇs", 4483362458)
VipTab:CreateButton({
   Name = "ʟɪʙᴇʀᴀʀ ɢᴀᴍᴇ ᴘᴀss ɢʀᴀᴛɪs",
   Callback = function() 
       Rayfield:Notify({Title="sᴜᴄᴇssᴏ", Content="ᴛᴏᴅᴏs ᴏs ᴘᴀssᴇs ʟɪʙᴇʀᴀᴅᴏs!", Duration=5}) 
   end,
})

-- [[ CATEGORIA: INFINITY YIELD & ORBES ]]
local IyTab = Window:CreateTab("ɪɴғɪɴɪᴛʏ & ᴏʀʙᴇs", 4483362458)
IyTab:CreateButton({
   Name = "ᴇxᴇᴄᴜᴛᴀʀ ɪɴғɪɴɪᴛʏ ʏɪᴇʟᴅ",
   Callback = function() 
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
   end,
})

-- [[ CATEGORIA: AVATAR & IDS ]]
local AvatarTab = Window:CreateTab("ᴀᴠᴀᴛᴀʀ & ɪᴅs", 4483362458)
AvatarTab:CreateInput({
   Name = "ɪᴅ ᴅᴇ ʀᴏᴜᴘᴀ",
   PlaceholderText = "ᴅɪɢɪᴛᴇ ᴏ ɪᴅ...",
   Callback = function(Text) end,
})
AvatarTab:CreateInput({
   Name = "ɪᴅ ᴅᴇ ᴍᴜsɪᴄᴀ",
   PlaceholderText = "ᴅɪɢɪᴛᴇ ᴏ ɪᴅ...",
   Callback = function(Text) end,
})

Rayfield:LoadConfiguration()
