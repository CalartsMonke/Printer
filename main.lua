--Variables Setup (Game)----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local mod = RegisterMod ("Printer" , 1)
local game = Game()


--Printer Active------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Printer Varibles--------------------------------------------------------------------------
local PRINTER = Isaac.GetItemIdByName("Printer")
local CRYINGCARD = Isaac.GetCardIdByName("CryingPicture")
local DEMONCHILDCARD = Isaac.GetCardIdByName('DemonChild')
local THECHESTCARD = Isaac.GetCardIdByName("TheChest")
local POOPCARD = Isaac.GetCardIdByName("PoopPicture")
local SCARYFACECARD = Isaac.GetCardIdByName("ScaryFace")
local FLOWERMINCARD = Isaac.GetCardIdByName("Flowermin")


--Printer Active Function-------------
function mod:printerUse(item)
    local player = Isaac.GetPlayer(0)
    do
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, CRYINGCARD, Isaac.GetFreeNearPosition(player.Position, 20), RandomVector(), player)
    end
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.printerUse, PRINTER);


--  STRIMP'S KILL YOURSELF CODE FOR KILLING YOUR SELF (you should)
--  
--  local function UseCryingCard(_, card, player)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false)
--  end
--  
--  mod:AddCallback(ModCallbacks.MC_USE_CARD, UseCryingCard, crypicture)