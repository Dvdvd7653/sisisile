local _0x5a2f = {
    "\104\116\116\112\115\58\47\47", -- https://
    "\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101", -- ReplicatedStorage
    "\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116", -- HumanoidRootPart
    "\83\105\108\101\110\116\65\105\109\71\85\73", -- SilentAimGUI
    "\80\108\97\121\101\114\71\117\105", -- PlayerGui
    "\83\105\108\101\110\116\32\65\105\109\32\83\101\116\116\105\110\103\115", -- Silent Aim Settings
    "\70\79\86\32\82\97\100\105\117\115\58\32", -- FOV Radius: 
    "\83\116\105\99\107\121\32\65\105\109\58\32", -- Sticky Aim: 
    "\76\111\99\107\32\75\101\121\58\32", -- Lock Key: 
    "\77\101\110\117\32\75\101\121\58\32", -- Menu Key: 
    "\83\104\111\119\32\70\79\86\32\67\105\114\99\108\101\58\32", -- Show FOV Circle: 
    "\83\89\83\84\69\77\58\32\37\115\32\124\32\84\65\82\71\69\84\58\32\37\115\32\124\32\80\73\78\71\58\32\37\100\109\115", -- SYSTEM: %s | TARGET: %s | PING: %dms
    "\83\89\83\84\69\77\58\32\83\69\65\82\67\72\73\78\71\32\124\32\80\73\78\71\58\32\37\100\109\115" -- SYSTEM: SEARCHING | PING: %dms
}

local _0x1b2c = game:GetService("Players")
local _0x3d4e = game:GetService("RunService")
local _0x5f6g = game:GetService("UserInputService")
local _0x7h8i = game:GetService("Stats")

local _0xLocal = _0x1b2c.LocalPlayer
local _0xMouse = _0xLocal:GetMouse()
local _0xCam = workspace.CurrentCamera

local _0xCfg = {
    _0xR = 150,
    _0xD = 600,
    _0xP = _0x5a2f[3],
    _0xLK = Enum.KeyCode.Q,
    _0xGK = Enum.KeyCode.RightShift,
    _0xTM = false,
    _0xSF = true,
    _0xPE = true,
    _0xPC = true,
    _0xBS = 800,
    _0xCN = Color3.fromRGB(0, 255, 255),
    _0xCL = Color3.fromRGB(255, 0, 0),
    _0xCP = Color3.fromRGB(0, 255, 0),
    _0xDS = 5
}

local _0xLT = nil
local _0xIL = false
local _0xITA = false
local _0xWFK = false
local _0xWFGK = false

local _0xSG = Instance.new("ScreenGui")
_0xSG.Name = _0x5a2f[4]
_0xSG.ResetOnSpawn = false
_0xSG.Parent = _0xLocal:WaitForChild(_0x5a2f[5])

local _0xMF = Instance.new("Frame")
_0xMF.Size = UDim2.new(0, 250, 0, 260)
_0xMF.Position = UDim2.new(0, 20, 0, 80)
_0xMF.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_0xMF.BorderSizePixel = 0
_0xMF.Active = true
_0xMF.Draggable = true
_0xMF.Parent = _0xSG

local _0xT = Instance.new("TextLabel")
_0xT.Size = UDim2.new(1, 0, 0, 30)
_0xT.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
_0xT.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xT.Font = Enum.Font.SourceSansBold
_0xT.TextSize = 18
_0xT.Text = _0x5a2f[6]
_0xT.Parent = _0xMF

local _0xCB = Instance.new("TextButton")
_0xCB.Size = UDim2.new(0, 30, 0, 30)
_0xCB.Position = UDim2.new(1, -30, 0, 0)
_0xCB.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
_0xCB.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xCB.Font = Enum.Font.SourceSansBold
_0xCB.TextSize = 18
_0xCB.Text = "X"
_0xCB.Parent = _0xT

_0xCB.MouseButton1Click:Connect(function() _0xMF.Visible = false end)

local _0xFL = Instance.new("TextLabel")
_0xFL.Size = UDim2.new(1, -20, 0, 20)
_0xFL.Position = UDim2.new(0, 10, 0, 40)
_0xFL.BackgroundTransparency = 1
_0xFL.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xFL.Font = Enum.Font.SourceSans
_0xFL.TextSize = 14
_0xFL.TextXAlignment = Enum.TextXAlignment.Left
_0xFL.Text = _0x5a2f[7] .. _0xCfg._0xR
_0xFL.Parent = _0xMF

local _0xFI = Instance.new("TextBox")
_0xFI.Size = UDim2.new(1, -20, 0, 25)
_0xFI.Position = UDim2.new(0, 10, 0, 60)
_0xFI.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
_0xFI.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xFI.Font = Enum.Font.SourceSans
_0xFI.TextSize = 14
_0xFI.Text = tostring(_0xCfg._0xR)
_0xFI.Parent = _0xMF

_0xFI.FocusLost:Connect(function()
    local _0xV = tonumber(_0xFI.Text)
    if _0xV then _0xCfg._0xR = _0xV _0xFL.Text = _0x5a2f[7] .. _0xCfg._0xR else _0xFI.Text = tostring(_0xCfg._0xR) end
end)

local _0xTMB = Instance.new("TextButton")
_0xTMB.Size = UDim2.new(1, -20, 0, 30)
_0xTMB.Position = UDim2.new(0, 10, 0, 95)
_0xTMB.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
_0xTMB.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xTMB.Font = Enum.Font.SourceSans
_0xTMB.TextSize = 14
_0xTMB.Text = _0x5a2f[8] .. (_0xCfg._0xTM and "TOGGLE" or "HOLD")
_0xTMB.Parent = _0xMF

_0xTMB.MouseButton1Click:Connect(function()
    _0xCfg._0xTM = not _0xCfg._0xTM
    _0xTMB.Text = _0x5a2f[8] .. (_0xCfg._0xTM and "TOGGLE" or "HOLD")
    _0xIL = false _0xITA = false _0xLT = nil
end)

local _0xKB = Instance.new("TextButton")
_0xKB.Size = UDim2.new(1, -20, 0, 30)
_0xKB.Position = UDim2.new(0, 10, 0, 135)
_0xKB.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
_0xKB.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xKB.Font = Enum.Font.SourceSans
_0xKB.TextSize = 14
_0xKB.Text = _0x5a2f[9] .. _0xCfg._0xLK.Name
_0xKB.Parent = _0xMF

_0xKB.MouseButton1Click:Connect(function()
    if not _0xWFK then
        _0xWFK = true _0xKB.Text = "..."
        local _0xConn
        _0xConn = _0x5f6g.InputBegan:Connect(function(_0xIn)
            if _0xIn.UserInputType == Enum.UserInputType.Keyboard then
                _0xCfg._0xLK = _0xIn.KeyCode _0xKB.Text = _0x5a2f[9] .. _0xCfg._0xLK.Name
                _0xWFK = false _0xConn:Disconnect()
            end
        end)
    end
end)

local _0xGKB = Instance.new("TextButton")
_0xGKB.Size = UDim2.new(1, -20, 0, 30)
_0xGKB.Position = UDim2.new(0, 10, 0, 175)
_0xGKB.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
_0xGKB.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xGKB.Font = Enum.Font.SourceSans
_0xGKB.TextSize = 14
_0xGKB.Text = _0x5a2f[10] .. _0xCfg._0xGK.Name
_0xGKB.Parent = _0xMF

_0xGKB.MouseButton1Click:Connect(function()
    if not _0xWFGK then
        _0xWFGK = true _0xGKB.Text = "..."
        local _0xConn
        _0xConn = _0x5f6g.InputBegan:Connect(function(_0xIn)
            if _0xIn.UserInputType == Enum.UserInputType.Keyboard then
                _0xCfg._0xGK = _0xIn.KeyCode _0xGKB.Text = _0x5a2f[10] .. _0xCfg._0xGK.Name
                _0xWFGK = false _0xConn:Disconnect()
            end
        end)
    end
end)

local _0xFVB = Instance.new("TextButton")
_0xFVB.Size = UDim2.new(1, -20, 0, 30)
_0xFVB.Position = UDim2.new(0, 10, 0, 215)
_0xFVB.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
_0xFVB.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xFVB.Font = Enum.Font.SourceSans
_0xFVB.TextSize = 14
_0xFVB.Text = _0x5a2f[11] .. (_0xCfg._0xSF and "ON" or "OFF")
_0xFVB.Parent = _0xMF

local function _0xCD(t, p)
    local o = Drawing.new(t)
    for k, v in pairs(p) do o[k] = v end
    return o
end

local _0xFC = _0xCD("Circle", {Thickness = 1, Transparency = 0.7, Visible = _0xCfg._0xSF})
local _0xTD = _0xCD("Circle", {Filled = true, Radius = _0xCfg._0xDS, Visible = false})
local _0xPD = _0xCD("Circle", {Filled = true, Radius = _0xCfg._0xDS - 1, Color = _0xCfg._0xCP, Visible = false})
local _0xSL = _0xCD("Line", {Thickness = 1, Transparency = 0.5, Visible = false})
local _0xST = _0xCD("Text", {Size = 18, Outline = true, Position = Vector2.new(20, 40), Visible = true})

_0xFVB.MouseButton1Click:Connect(function()
    _0xCfg._0xSF = not _0xCfg._0xSF
    _0xFVB.Text = _0x5a2f[11] .. (_0xCfg._0xSF and "ON" or "OFF")
    _0xFC.Visible = _0xCfg._0xSF
end)

local function _0xGP()
    local s, p = pcall(function() return _0x7h8i.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000 end)
    return s and p or 0.05
end

local function _0xIV(p)
    if not p or not p.Parent then return false end
    local c = _0xLocal.Character
    if not c then return false end
    local r = RaycastParams.new()
    r.FilterType = Enum.RaycastFilterType.Exclude
    r.FilterDescendantsInstances = {c}
    local o = _0xCam.CFrame.Position
    local d = (p.Position - o)
    local res = workspace:Raycast(o, d, r)
    if res then return res.Instance == p or res.Instance:IsDescendantOf(p.Parent) end
    return false
end

local function _0xGPP(t)
    if not _0xCfg._0xPE or not t then return t and t.Position end
    local v = t.Velocity
    local d = (_0xCam.CFrame.Position - t.Position).Magnitude
    local b = math.max(_0xCfg._0xBS, 1)
    local tt = d / b
    local pc = _0xCfg._0xPC and (_0xGP() / 2) or 0
    return t.Position + (v * (tt + pc))
end

local function _0xGT()
    local cl = nil
    local d = math.huge
    local m = _0x5f6g:GetMouseLocation()
    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild(_0xCfg._0xP) then
            local p = v[_0xCfg._0xP]
            local wd = (_0xCam.CFrame.Position - p.Position).Magnitude
            if wd <= _0xCfg._0xD then
                local sp, os = _0xCam:WorldToViewportPoint(p.Position)
                if os then
                    local mag = (Vector2.new(sp.X, sp.Y) - m).Magnitude
                    if mag < _0xCfg._0xR and mag < d then
                        if _0xIV(p) then d = mag cl = p end
                    end
                end
            end
        end
    end
    return cl
end

local _0xOI = nil
_0xOI = hookmetamethod(_0xMouse, "__index", function(s, i)
    local ok, res = pcall(function()
        if i == "Hit" or i == "Target" then
            local l = _0xCfg._0xTM and _0xITA or _0xIL
            local t = (l and _0xLT and _0xIV(_0xLT)) and _0xLT or _0xGT()
            if t then
                local p = _0xGPP(t)
                if p then
                    if i == "Hit" then return CFrame.new(p) elseif i == "Target" then return t end
                end
            end
        end
    end)
    if ok and res ~= nil then return res end
    return _0xOI(s, i)
end)

_0x5f6g.InputBegan:Connect(function(i, p)
    if i.KeyCode == _0xCfg._0xGK then _0xMF.Visible = not _0xMF.Visible end
    if p then return end
    if i.KeyCode == _0xCfg._0xLK then
        if _0xCfg._0xTM then
            _0xITA = not _0xITA
            _0xLT = _0xITA and _0xGT() or nil
        else
            _0xIL = true _0xLT = _0xGT()
        end
    end
end)

_0x5f6g.InputEnded:Connect(function(i)
    if i.KeyCode == _0xCfg._0xLK and not _0xCfg._0xTM then _0xIL = false _0xLT = nil end
end)

_0x3d4e.RenderStepped:Connect(function()
    local m = _0x5f6g:GetMouseLocation()
    local pi = math.floor(_0xGP() * 1000)
    _0xFC.Position = m _0xFC.Radius = _0xCfg._0xR _0xFC.Visible = _0xCfg._0xSF
    local l = _0xCfg._0xTM and _0xITA or _0xIL
    local c = (l and _0xLT and _0xIV(_0xLT)) and _0xLT or _0xGT()
    if c then
        local sp, os = _0xCam:WorldToViewportPoint(c.Position)
        local pr = _0xGPP(c)
        local pp, pos = _0xCam:WorldToViewportPoint(pr)
        if os then
            local t2 = Vector2.new(sp.X, sp.Y)
            _0xTD.Position = t2 _0xTD.Visible = true
            _0xSL.From = m _0xSL.To = t2 _0xSL.Visible = true
            if pos and _0xCfg._0xPE then
                _0xPD.Position = Vector2.new(pp.X, pp.Y) _0xPD.Visible = true
            else _0xPD.Visible = false end
            local col = l and _0xCfg._0xCL or _0xCfg._0xCN
            _0xFC.Color = col _0xTD.Color = col _0xSL.Color = col _0xST.Color = col
            _0xST.Text = string.format(_0x5a2f[12], l and "LOCKED" or "READY", c.Parent.Name, pi)
        else _0xTD.Visible = false _0xPD.Visible = false _0xSL.Visible = false end
    else
        _0xFC.Color = _0xCfg._0xCN _0xTD.Visible = false _0xPD.Visible = false _0xSL.Visible = false
        _0xST.Color = _0xCfg._0xCN _0xST.Text = string.format(_0x5a2f[13], pi)
    end
end)
