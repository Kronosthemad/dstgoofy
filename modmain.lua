print("--- MY LOCAL MOD LOADED SUCCESSFULLY ---")

-- Example: Let's make Wilson speedier right out of the gate
TUNING.WILSON_RUN_SPEED = 8 -- Default is 6

-- Modifying the standard log prefab
AddPrefabPostInit("log", function(inst)
    -- 1. Modify a direct property via the TUNING table
    -- (Though logs share a global tuning value, you can override it on individual instances)
    if inst.components.fuel then
        inst.components.fuel.fuelvalue = 100 -- Default is usually much lower
    end

    -- 2. Add an entirely new component to logs
    -- Let's make logs edible by the player, just for fun
    if not inst.components.edible then
        inst.make_edible = function(self)
            inst:AddComponent("edible")
            inst.components.edible.foodtype = "VEGGIE"
            inst.components.edible.healthvalue = -5  -- Ouch, splinters
            inst.components.edible.hungervalue = 2   -- Barely fills you up
        end
        inst:make_edible()
    end
end)


AddPrefabPostInit("wilson", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("willow", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("wolfgang", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("wendy", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("WX-78", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("wickerbottom", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)


AddPrefabPostInit("woodie", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("wes", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("Maxwell", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

AddPrefabPostInit("wagstaff", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilson a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very scientific!")
        end
    end)
end)

-- 1. Grab the global Component class from the engine environment
local Combat = REQDONTSTARVE and require("components/combat") or _G.require("components/combat")

-- 2. Cache the game's original damage calculation function
local _GetDamageModifier = Combat.GetDamageModifier

-- 3. Override the function with your own wrapper
function Combat:GetDamageModifier(...)
    -- Call the original function first to preserve other mods' calculations
    local original_modifier = _GetDamageModifier(self, ...) or 1
    
    -- Let's implement a global mechanic: scale all damage based on the world clock.
    -- (e.g., attacks become more lethal and dangerous at deep night)
    local world = _G.GetWorld()
    local clock = world and world.components.clock
    
    local time_multiplier = 1.0
    if clock and clock:IsNight() then
        time_multiplier = 1.5 -- 50% more damage across the board at night
    end

    -- Return the combined modifier
    return original_modifier * time_multiplier
end
