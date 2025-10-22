
# LB-Phone-for-Creative-Enchanted

A small fix to use LB-Phone on the Creative Enchanted base


## Installation 🇺🇸

1. Add this to your fxmanifest.lua in the shared_script section
```lua
"@vrp/lib/Utils.lua",
"@vrp/config/Vehicle.lua",
"@vrp/config/Global.lua"
```
2. Add the creative.lua files to the following locations:
Client:
```lua
lb-phone\client\custom\frameworks
```
Server:
```lua
lb-phone\server\custom\frameworks

```
3. Then add these settings to your config.lua file. Inside: lb-phone\config
```lua
Config.Framework = "creative"
Config.CustomFramework = true 
Config.Item.Require = true 
Config.Item.Name = "cellphone" -- name of the phone item
Config.ServerSideSpawn = true
```
## Instalação 🇧🇷

1. Adicione isso ao seu fxmanifest.lua na seção shared_script
```lua
"@vrp/lib/Utils.lua",
"@vrp/config/Vehicle.lua",
"@vrp/config/Global.lua"
```
2. Adicione os arquivos creative.lua aos seguintes locais:
Client:
```lua
lb-phone\client\custom\frameworks
```
Server:
```lua
lb-phone\server\custom\frameworks

```
3. Em seguida, adicione essas configurações ao seu arquivo config.lua. Dentro: lb-phone\config
```lua
Config.Framework = "creative"
Config.CustomFramework = true 
Config.Item.Require = true 
Config.Item.Name = "cellphone" -- name of the phone item
Config.ServerSideSpawn = true
```
