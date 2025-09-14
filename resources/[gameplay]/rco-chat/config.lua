Config = {}

-- General chat settings
Config.MaxMessages = 100           -- Maximum messages in history
Config.AutoCloseDelay = 10000      -- Delay for auto-close chat (ms)
Config.SpamProtection = true       -- Enable spam protection
Config.SpamCooldown = 1000        -- Cooldown between messages (ms)

-- Channel settings
Config.OOC = true               -- Enable OOC channel (true/false)
Config.OOCLocal = true          -- Enable OOC Local channel (true/false)
Config.ME = true                -- Enable ME channel (true/false) - always true by default
Config.DO = true                -- Enable DO channel (true/false) - always true by default

-- Text3D settings
Config.METext3DDuration = 6     -- ME channel Text3D duration in seconds
Config.DOText3DDuration = 6     -- DO channel Text3D duration in seconds
Config.METext3DZOffset = 1.0    -- Z offset for ME Text3D display (height above player)
Config.DOText3DZOffset = 1.0    -- Z offset for DO Text3D display (height above player)

-- Text3D Font and Color settings
Config.METext3DFont = 25        -- Font ID for ME Text3D (25 = default)
Config.DOText3DFont = 25        -- Font ID for DO Text3D (25 = default)
Config.METext3DColor = {255, 255, 0, 255}    -- Color for ME Text3D (R, G, B, A)
Config.DOText3DColor = {255, 0, 0, 255}      -- Color for DO Text3D (R, G, B, A)

-- Asterisks settings for ME and DO channels
Config.UseAsterisksOnMeAndDo = true    -- Enable/disable asterisks (*) for ME and (**) for DO channels

-- UI Color settings
Config.MEUIColor = "#ffff00"    -- Color for ME messages in UI (hex)
Config.DOUIColor = "#ff0000"    -- Color for DO messages in UI (hex)
Config.OOCUIColor = "#ffffff"   -- Color for OOC messages in UI (hex)
Config.OOCLocalUIColor = "#ffffff" -- Color for OOC Local messages in UI (hex)

-- Proximity settings
Config.LocalRadius = 10.0       -- Radius for local messages (meters)

-- Message settings
Config.Messages = {
    MaxLength = 200,             -- Maximum message length
    SpamProtection = true,       -- Enable spam protection
    SpamCooldown = 1000,        -- Cooldown between messages (ms)
    SpamThreshold = 5            -- Maximum messages before spam detection
}

-- Locale settings
Config.Locale = 'en'            -- Default locale (en, es, pt-br)

-- Chat settings
Config.Chat = {
    MaxMessages = 100,           -- Maximum messages in history
    AutoCloseDelay = 10000,      -- Delay for auto-close chat (ms)
    SuggestionsVisible = true,   -- Show command suggestions by default
    MaxLines = 100,              -- Maximum lines in chat history
    FadeTime = 5000,             -- Time for messages to fade (ms)
    HistoryAutoClose = 10        -- Auto-close chat history after seconds
}

-- Debug settings
Config.Debug = false             -- Enable debug mode (true/false)



