--- STEAMODDED HEADER
--- MOD_NAME: Lucid Multimedia Cards
--- MOD_ID: LucidMultimedia
--- PREFIX: LucidMultimedia
--- MOD_AUTHOR: [DrJosephJorgen]
--- MOD_DESCRIPTION: Faces and Aces for Lucid Multimedia.
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.0
--- BADGE_COLOR: E895FC

local atlas_key = 'LucidMultimedia'
local atlas_path = 'LucidMultimedia.png' 
local atlas_path_hc = 'LucidMultimediaHiC.png' 

local suits = {'Hearts', 'Clubs', 'Diamonds', 'Spades'} 
local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'} 
local display_ranks = {'Jack', 'Queen', 'King'}

local description = 'Lucid MultiMedia' 

SMODS.Atlas { 
  key = 'modicon',
  px = 32,
  py = 32,
  path = 'modicon.png'
}

SMODS.Atlas{  
    key = atlas_key .. '_lc',
    px = 71,
    py = 95,
    path = atlas_path
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key .. '_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc
    }
end

for i, suit in ipairs(suits) do
    local palettes = {}

    -- Low-contrast palette
    local lc_palette = {
        key = "lc",
        ranks = ranks,
        display_ranks = display_ranks,
        atlas = atlas_key .. '_lc',
        pos_style = "deck",
        y = i - 1
    }
    table.insert(palettes, lc_palette)

    -- High-contrast palette if provided
    if atlas_path_hc then
        local hc_palette = {
            key = "hc",
            ranks = ranks,
            display_ranks = display_ranks,
            atlas = atlas_key .. '_hc',
            pos_style = "deck",
            y = i - 1
        }
        table.insert(palettes, hc_palette)
    end

    SMODS.DeckSkin {
        key = string.lower(suit) .. '_skin',
        suit = suit,
        loc_txt = description,
        palettes = palettes
    }
end