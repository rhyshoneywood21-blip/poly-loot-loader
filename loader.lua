-- POLY LOOT | RC2.2 updated Merchant | Luraph-protected loader
-- This file fetches ONLY the obfuscated public release; original source stays private.
local url = "https://raw.githubusercontent.com/rhyshoneywood21-blip/poly-loot-loader/main/releases/POLY_LOOT_RC2_2_UPDATED_MERCHANT_LURAPH.lua"
local ok, source = pcall(function() return game:HttpGet(url) end)
if not ok or type(source) ~= "string" then
    error("[POLY LOOT] Could not download the protected release: " .. tostring(source))
end
local execute, compileError = loadstring(source)
if not execute then
    error("[POLY LOOT] Protected release could not compile: " .. tostring(compileError))
end
execute()
