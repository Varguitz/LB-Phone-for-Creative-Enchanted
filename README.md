# LB-Phone-for-Creative-Enchanted

Install Instructions: 🇺🇸
Add this to your fxmanifest.lua in the shared_script section
  "@vrp/lib/Utils.lua",
	"@vrp/config/Vehicle.lua",
	"@vrp/config/Global.lua"

Add the creative.lua files to the following locations:
Client:
lb-phone\client\custom\frameworks
Server:
lb-phone\server\custom\frameworks

Then add these settings to your config.lua file. Inside: lb-phone\config
Config.Framework = "creative"
Config.CustomFramework = true 
Config.Item.Require = true 
Config.Item.Name = "cellphone" -- name of the phone item
Config.ServerSideSpawn = true




Instruções de instalação: 🇧🇷
Adicione isto ao seu fxmanifest.lua na seção shared_script
```lua"@vrp/lib/Utils.lua",
"@vrp/config/Vehicle.lua",
"@vrp/config/Global.lua"```

Adicione os arquivos creative.lua aos seguintes locais:
Client:
lb-phone\client\custom\frameworks
Server:
lb-phone\server\custom\frameworks

Em seguida, adicione estas configurações ao seu arquivo config.lua. Dentro: lb-phone\config
Config.Framework = "creative"
Config.CustomFramework = true 
Config.Item.Require = true 
Config.Item.Name = "cellphone" -- name of the phone item
Config.ServerSideSpawn = true
