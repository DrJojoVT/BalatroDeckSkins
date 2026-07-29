--- STEAMODDED HEADER
--- MOD_NAME: Variance Equilibrium Cards
--- MOD_ID: VarProEquilibrium
--- PREFIX: VarProEquilibrium
--- MOD_AUTHOR: [DrJosephJorgen]
--- MOD_DESCRIPTION: Faces and Aces for Variance Equilibrium branch.
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.1
--- BADGE_COLOR: E895FC

local atlas_key = 'Equilibrium'
local atlas_path = 'Equilibrium.png' 
local atlas_path_hc = 'EquilibriumHiC.png' 

local suits = {'Hearts', 'Clubs', 'Diamonds', 'Spades'} 
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'} 
local display_ranks = {'Jack', 'Queen', 'King', 'Ace'}

local description = 'VarPro: Equilibrium' 

SMODS.Atlas { 
  key = 'modicon',
  px = 32,
  py = 32,
  path = 'modicon.png'
}

-- Capture the returned atlas objects to grab their true, prefixed keys
local atlas_lc = SMODS.Atlas {  
    key = atlas_key .. '_lc',
    px = 71,
    py = 95,
    path = atlas_path
}

local atlas_hc = SMODS.Atlas {  
    key = atlas_key .. '_hc',
    px = 71,
    py = 95,
    path = atlas_path_hc
}

for i, suit in ipairs(suits) do
    SMODS.DeckSkin {
        key = string.lower(suit) .. '_skin',
        suit = suit,
        loc_txt = description,
        palettes = {
            {
                key = "lc",
                atlas = atlas_lc.key, -- Dynamically passes the correct prefixed key string
                pos_style = "deck",
                ranks = ranks,
                display_ranks = display_ranks,
                y = i - 1
            },
            {
                key = "hc",
                atlas = atlas_hc.key, -- Dynamically passes the correct prefixed key string
                pos_style = "deck",
                ranks = ranks,
                display_ranks = display_ranks,
                y = i - 1
            }
        }
    }
end
