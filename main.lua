--   [Variables Setup (Game)]
local mod = RegisterMod ("Printer" , 1)
local game = Game()


--    [Printer Active]

--    [Printer Varibles]
local PRINTER = Isaac.GetItemIdByName("Printer")
local CRYINGCARD = Isaac.GetCardIdByName("CryingPicture")
local DEMONCHILDCARD = Isaac.GetCardIdByName('DemonChild')
local THECHESTCARD = Isaac.GetCardIdByName("TheChest")
local POOPCARD = Isaac.GetCardIdByName("PoopPicture")
local SCARYFACECARD = Isaac.GetCardIdByName("ScaryFace")
local FLOWERMINCARD = Isaac.GetCardIdByName("Flowermin")


--   [Printer Active Function]
function mod:printerUse(item)
    local player = Isaac.GetPlayer(0)
    do
            Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, CRYINGCARD, Isaac.GetFreeNearPosition(player.Position, 20), RandomVector(), player)
    end
end

mod:AddCallback(ModCallbacks.MC_USE_ITEM, mod.printerUse, PRINTER);

--    [Card Pocket Item Functions]


--    [Crying Card]
local function  UseCryingCard (_, card, player)
    player:UseActiveItem(CollectibleType.COLLECTIBLE_TAMMYS_HEAD, false, false, true, false)
end

mod:AddCallback(ModCallbacks.MC_USE_CARD, UseCryingCard, CRYINGCARD)


--    [Demon Child Card]
local function UseDemonChild (_, card, player)
    player:UseActiveItem(CollectibleType.COLLECTIBLE_THE_NAIL, false, false, true, true)
end

mod:AddCallback(ModCallbacks.MC_USE_CARD, UseDemonChild, DEMONCHILDCARD)



--   [The Chest Card]
local function UseTheChest (_, card, player)
    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_LOCKEDCHEST, ChestSubType.CHEST_CLOSED, Isaac.GetFreeNearPosition(player.Position, 20), RandomVector(), player)
end

mod:AddCallback(ModCallbacks.MC_USE_CARD, UseTheChest, THECHESTCARD)

--   [The Poop Card]
local function UseThePoopCard (_, card, player)
    Isaac.GridSpawn(GridEntityType.GRID_POOP,0, Isaac.GetFreeNearPosition(player.Position, 20), RandomVector(), player)
end

mod:AddCallback(ModCallbacks.MC_USE_CARD, UseThePoopCard, POOPCARD)


--    [ScaryFace Card]
local function UseScaryFace (_, card, player)
    ScaryFaceFearTimer = 9999
        local entities = Isaac.GetRoomEntities()
            for _, entity in ipairs(entities) do
                if entity:IsActiveEnemy() and entity:IsVulnerableEnemy() then
                    entity:AddFear(EntityRef(player),(ScaryFaceFearTimer))
                end
            end
            
end

mod:AddCallback(ModCallbacks.MC_USE_CARD, UseScaryFace, SCARYFACECARD)



--  STRIMP'S KILL YOURSELF CODE FOR KILLING YOUR SELF (you should) (aka cardcode for using actives) (you still should tho)
--  
--  local function UseCryingCard(_, card, player)
--      player:UseActiveItem(CollectibleType.COLLECTIBLE_CRACK_THE_SKY, false, false, true, false) (repeat 10 times)
--  end
--  
--  mod:AddCallback(ModCallbacks.MC_USE_CARD, UseCryingCard, crypicture)