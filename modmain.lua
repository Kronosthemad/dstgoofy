print("--- MY LOCAL MOD LOADED SUCCESSFULLY ---")

-- Example: Let's make Wilson speedier right out of the gate
TUNING.WILSON_RUN_SPEED = 8 -- Default is 6
TUNING.WILLOW_RUN_SPEED = 8
TUNING.WOLFGANG_RUN_SPEED = 8
TUNING.WENDY_RUN_SPEED = 8
TUNING.WX_78_RUN_SPEED = 8
TUNING.WICKERBOTOM_RUN_SPEED = 8
TUNING.WOODIE_RUN_SPEED = 8
TUNING.WES_RUN_SPEED = 8
TUNING.MAXWELL_RUN_SPEED = 8
TUNING.WAGSTAFF_RUN_SPEED = 8
TUNING.WEBBER_RUN_SPEED = 8
TUNING.WALTER_RUN_SPEED = 8
TUNING.WINONA_RUN_SPEED = 8
TUNING.WARLY_RUN_SPEED = 8
TUNING.WIGFRID_RUN_SPEED = 8
TUNING.WURT_RUN_SPEED = 8
TUNING.WOODWORM_RUN_SPEED = 8
TUNING.WOODLEGS_RUN_SPEED = 8
TUNING.WALANI_RUN_SPEED = 8
TUNING.WHEELER_RUN_SPEED = 8
TUNING.WILBA_RUN_SPEED = 8
TUNING.WORTOX_RUN_SPEED = 8
TUNING.WONKEY_RUN_SPEED = 8
TUNING.WANDA_RUN_SPEED = 8


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
            inst.components.edible.healthvalue = -15  -- Ouch, splinters
            inst.components.edible.hungervalue = 50   -- Fills you up
        end
        inst:make_edible()
    end
end)

AddPrefabPostInit("wigfrid", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wigfrid a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("wilba", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilba a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("wortox", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wortox a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("wanda", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wanda a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("wonkey", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wonkey a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("woodlegs", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Woodlegs a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("walani", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Walani a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("wilber", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wilber a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("wheeler", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wheeler a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("wurt", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Wurt a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("woodworm", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Woodworm a line of dialogue whenever it takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("warly", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Warly a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("winona", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Winona a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
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

AddPrefabPostInit("webber", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Webber a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("Pretty Red...  Focus Fighting!")
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
        -- Give Willow a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("I will BURN you!")
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
        -- Give Wolfgang a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
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
        -- Give Wendy a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("No! I don't want to be a ghost too!")
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
        -- Give WX-78 a line of dialogue whenever it takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
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
        -- Give Wickerbottom a line of dialogue whenever she takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
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
        -- Give Woodie a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
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
        -- Give Wes a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
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
        -- Give Maxwell a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
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
        -- Give Wagstaff a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
        end
    end)
end)

AddPrefabPostInit("walter", function(inst)
    -- Verify the component exists before trying to modify it
    if inst.components.health then
        inst.components.health:SetMaxHealth(250) -- Default is 150
    end

    if inst.components.sanity then
        inst.components.sanity:SetMax(200)
    end

    -- You can also listen for events specific to this instance
    inst:ListenForEvent("attacked", function(inst, data)
        -- Give Walter a line of dialogue whenever he takes damage
        if inst.components.talker then
            inst.components.talker:Say("That didn't feel very good!")
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
