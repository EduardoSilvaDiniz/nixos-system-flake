local formatDate = "date +'%d-%m-%Y-%H-%M-%S'"
local zipName = "Nomifactory-CEu-"
local pipe = io.popen(formatDate)
local path = "~/.local/share/PrismLauncher/instances/NomifactoryCEu/minecraft"
local pcloudPath = "/home/edu/pCloudDrive/minecraft/"
local name = zipName .. pipe:read("*l") .. ".zip"

print(name)

if pipe ~= nil then
	os.execute(
		"zip -rv "
			.. name
			.. " "
			.. path
			.. "/saves"
			.. " "
			.. path
			.. "/resourcepacks"
			.. " "
			.. path
			.. "/options.txt"
			.. " "
			.. path
			.. "/journeymap"
			.. " "
			.. path
			.. "/visualores"
			.. " "
			.. path
			.. "/hei_bookmarks.ini"
	)
  os.execute("mv " .. name .. " " .. pcloudPath)
	-- zip mine... path/saves path/resourcepacks path/options.txt path/journeymap path/visualores path/hei_bookmarks.ini
end
