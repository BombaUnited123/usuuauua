local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Hacks Hubs 2.3", colors)
local colors = {
    SchemeColor = Color3.fromRGB(81,50,33),
    Background = Color3.fromRGB(47, 47, 48),
    Header = Color3.fromRGB(99, 99, 100),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local Tab1 = Window:NewTab("Main Hacks")
local Tab1Section = Tab1:NewSection("Main Hubs")

Tab1Section:NewSlider("Walk Speed", "Speed Of You Walking", 500, 1, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Tab1Section:NewSlider("Jump Power", "Jumping Height", 500, 1, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Tab1Section:NewSlider("FOV", "Field Of View", 500, 2, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Workspace.CurrentCamera.FieldOfView = s
end)

Tab1Section:NewSlider("Gravity", "Gravity", 500, 2, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Workspace.Gravity = s
end)

Tab1Section:NewSlider("Invisible", "Hunt And Boo!", 500, 2, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Transparency = s
end)

Tab1Section:NewSlider("Terrain", "Set The Terrain Invisibility!", 500, 2, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Workspace.Terrain.Transparency = s
end)

Tab1Section:NewToggle("Infinite Jumping", "Toggle To Inf Jumps", function(state)
    if state then
        local InfiniteJumpEnabled = true
          game:GetService("UserInputService").JumpRequest:connect(function()
          if InfiniteJumpEnabled then
           game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
         end
     end)
    else
        print("Toggle Off")
    end
end)

Tab1Section:NewButton("Get Message", "Get NBC Fake Message!", function()
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Systems : NBC Hacked Roblox", "ALL")
    wait(5)
end)

Tab1Section:NewColorPicker("Rainbow Meters", "Show Indicated Meters", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

Tab1Section:NewButton("Get Fake Hint", "Umm IDK", function()
    msg = Instance.new ("Hint")
        msg.Parent = game.Workspace
        msg.Text = "NBC : MUWAHAHAHHAHAHAHA I WANTED HACK ROBLOX NOOB"
        wait(11)
        msg:remove()
        wait(3)
end)


Tab1Section:NewButton("Get Fake Message", "Umm IDK", function()
    msg = Instance.new ("Message")
        msg.Parent = game.Workspace
        msg.Text = "NBC : Moskow"
        wait(9)
        msg:remove()
        wait(3)
end)
Tab1Section:NewDropdown("Save List", "The Save List", {"Save 1", "Save 2", "Save 3"}, function(currentOption)
    print(currentOption)
end)

Tab1Section:NewButton("Fill Save", "Saves The Empty Load", function()
    print("Success To Filled The Empty Slot")
end)

Tab1Section:NewButton("Kavo Ui == Orion Lib", "Switch To Newer Version", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/8v2JdbB1')))()
end)

Tab1Section:NewButton("Give Meh A Flashlight", "Gave To Meeh", function()
    loadstring(game:GetObjects("rbxassetid://10093563208")[1].Source)()
end)

Tab1Section:NewLabel("Bear Bear I'm A Bear")

Tab1Section:NewToggle("IMABEAR", "IMABEAR", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)