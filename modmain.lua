print("--- MY LOCAL MOD LOADED SUCCESSFULLY ---")

-- Modifying the standard log prefab

local function MakeLogsEdible(inst)
    -- Add the edible component if it doesn't already exist
    if not inst.components.edible then
        inst:AddComponent("edible")
    end

    -- Configure the edible properties
    -- Food types: FOODTYPE.VEGGIE, FOODTYPE.MEAT, FOODTYPE.RAW, etc. (WOOD is a valid type too!)
    inst.components.edible.foodtype = "VEGGIE"
    inst.components.edible.healthvalue = 5      -- Restores 5 Health
    inst.components.edible.hungervalue = 25.5   -- Restores 25.5 Hunger
    inst.components.edible.sanityvalue = -10     -- Costs 10 Sanity (eating wood is tough on the mind!)
end




local character_quotes = {
    wilson = "Science cannot explain this pain!",
    willow = "Hey! Only I get to burn things!",
    wolfgang = "Is only scratch! Wolfgang is strong!",
    wendy = "No I don't want to be a ghost too!",
    webber = "Pretty Red...  Focus Fighting!"
    -- Just add custom modded character prefabs here too:
    -- mycustomcharacter = "Custom quote here!"
}

-- This function runs whenever a player is attacked
local function OnPlayerAttacked(inst, data)
    -- Safety check to make sure the talker component exists
    if inst.components.talker then
        -- A list of random pain lines
        local pain_lines = {
            "Ouch! That smarts!",
            "Ow! Watch the face!",
            "My bones!",
            "Is that the best you've got?",
            "Ah! Get it off me!"
        }
        
        -- Look up if the current character has a special line
        local special_line = character_quotes[inst.prefab]
        if special_line then
            table.insert(pain_lines, special_line)
        end

        -- Pick a random phrase from the list
        local random_line = pain_lines[math.random(#pain_lines)]
        
        -- Make the character say it
        inst.components.talker:Say(random_line)
    end
end

-- This setup function runs once when a player spawns/joins
local function SetupSpeechOnHit(inst)
    -- Listen for the built-in "attacked" event
    inst:ListenForEvent("attacked", OnPlayerAttacked)
end




local function BoostPlayerStats(inst)
    -- Boost Max Health
    if inst.components.health then
        -- SetMaxHealth sets the new limit, and maintains the current health percentage
        local current_max_health = inst.components.health.maxhealth
        inst.components.health:SetMaxHealth(current_max_health + 100) -- Adds 100 to whatever their default is
    end

    -- Boost Max Sanity
    if inst.components.sanity then
        -- SetMax sets the new sanity ceiling
        local current_max_sanity = inst.components.sanity.max
        inst.components.sanity:SetMax(current_max_sanity + 50) -- Adds 50 to whatever their default is
    end
end

local function main()
    -- Hook into the "log" prefab
    AddPrefabPostInit("log", MakeLogsEdible)
    -- Apply this listener to ALL player characters
    AddPlayerPostInit(SetupSpeechOnHit)
    -- Apply this to all players when they spawn or join
    AddPlayerPostInit(BoostPlayerStats)
end

main()