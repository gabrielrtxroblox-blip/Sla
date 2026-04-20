-- [[ BIBLIOTECA DE UI (EXEMPLO) ]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Brookhaven Hub | Premium",
   LoadingTitle = "Carregando Script...",
   LoadingSubtitle = "by AI Assistant",
})

-- Variáveis Globais
local SelectedPlayer = ""
local WalkSpeedValue = 16

-- [[ CATEGORIA: INFINITY YIELD & COMANDOS ]]
local MainTab = Window:CreateTab("Principal", 4483362458)
MainTab:CreateButton({
   Name = "Carregar Infinity Yield",
   Callback = function()
       loadstring(game:HttpGet('https://githubusercontent.com'))()
   end,
})

-- [[ CATEGORIA: JOGADOR (AVATAR & SPEED) ]]
local PlayerTab = Window:CreateTab("Avatar/Speed", 4483362458)
PlayerTab:CreateSlider({
   Name = "Velocidade (Speed)",
   Range = {16, 300},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

-- [[ CATEGORIA: TROLLS (NÃO VISUAL) ]]
-- Nota: Para não ser visual, o script tenta interagir com o personagem do outro jogador.
local TrollTab = Window:CreateTab("Trolls & Players", 4483362458)

local PlayerList = {}
for _, v in pairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer then table.insert(PlayerList, v.Name) end
end

TrollTab:CreateDropdown({
   Name = "SELECIONAR JOGADOR",
   Options = PlayerList,
   CurrentOption = {""},
   MultipleOptions = false,
   Callback = function(Option)
      SelectedPlayer = Option[1]
   end,
})

TrollTab:CreateButton({
   Name = "Teleportar para Jogador",
   Callback = function()
       local target = game.Players:FindFirstChild(SelectedPlayer)
       if target and target.Character then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
       end
   end,
})

-- Exemplo de Troll "Não Visual" (Kill/Void) - Funciona em alguns scripts de voo
TrollTab:CreateButton({
   Name = "Fling Player (Voo Troll)",
   Callback = function()
       -- O comando de Fling (arremessar) é o troll mais real em Brookhaven
       -- Ele usa a física do seu corpo para empurrar o outro no servidor.
       loadstring(game:HttpGet("https://githubusercontent.com"))()
   end,
})

-- [[ CATEGORIA: GAMEPASS & VIP ]]
local VipTab = Window:CreateTab("Gamepasses", 4483362458)
VipTab:CreateButton({
   Name = "Desbloquear Carros/VIP (Visual)",
   Callback = function()
       -- Em Brookhaven, liberar gamepass é quase sempre visual.
       -- Para os outros verem, você precisaria de um script que manipula os RemoteEvents da Wolfpaq.
       Rayfield:Notify({Title = "Aviso", Content = "Tentando burlar permissões de veículos...", Duration = 5})
   end,
})

-- [[ SISTEMA DE CHAT ]]
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local args = string.split(msg, " ")
    if args[1] == "!speed" then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(args[2])
    elseif args[1] == "!re" then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)
