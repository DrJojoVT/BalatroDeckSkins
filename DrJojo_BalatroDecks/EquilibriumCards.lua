--- STEAMODDED HEADER
--- MOD_NAME: Variance Cards
--- MOD_ID: Equilibrium
--- PREFIX: Equilibrium
--- MOD_AUTHOR: [DrJosephJorgen]
--- MOD_DESCRIPTION: Faces and Aces for Variance Equilibrium branch.
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.0
--- BADGE_COLOR: E895FC

local atlas_key = 'Equilibrium'-- Format: PREFIX_KEY
local atlas_path = 'Equilibrium.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'EquilibriumHiC.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'spades', 'diamonds', 'hearts', 'clubs'} -- Which suits to replace
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'} -- Which ranks to replace

local description = 'Equilibrium' -- English-language description, also used as default


SMODS.Atlas { -- modicon
  key = 'modicon',
  px = 32,
  py = 32,
  path = 'modicon.png'
}

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false},
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false},
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description
        },
        posStyle = 'deck'
    }
end
