--- STEAMODDED HEADER
--- MOD_NAME: Variance Equilibrium Cards
--- MOD_ID: VarProEquilibrium
--- PREFIX: VarProEquilibrium
--- MOD_AUTHOR: [DrJosephJorgen]
--- MOD_DESCRIPTION: Faces and Aces for Variance Equilibrium branch.
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.1.0
--- BADGE_COLOR: E895FC


local Sets = {}
-- Phase 1 v1
table.insert(Sets, {
    atlas = 'Equilibrium',
    suits = {'Hearts', 'Clubs', 'Diamonds', 'Spades'},
    ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
    display_ranks = {'Jack', 'Queen', 'King', 'Ace'},
    description = 'VarPro: Equilibrium 1' 
})
table.insert(Sets, {
    atlas = 'Equilibrium2',
    suits = {'Clubs', 'Diamonds'},
    ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
    display_ranks = {'Jack', 'Queen', 'King', 'Ace'},
    description = 'VarPro: Equilibrium 2' 
})

SMODS.Atlas { 
  key = 'modicon',
  px = 32,
  py = 32,
  path = 'modicon.png'
}

for _, def in ipairs(Sets) do
    local atlas_key = def.atlas
    local atlas_path = def.atlas .. '.png'
    local atlas_path_hc = def.atlas .. 'HiC.png'
    local suits = def.suits
    local ranks = def.ranks
    local display_ranks = def.display_ranks
    local description = def.description

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
            key = string.lower(suit) .. '_' .. string.lower(atlas_key) .. '_skin',
            suit = suit,
            -- Correctly maps standard localization properties
            loc_txt = {
                ['en-us'] = description
            },
            palettes = {
                {
                    key = "lc",
                    atlas = atlas_lc.key,
                    pos_style = "deck",
                    ranks = ranks,
                    display_ranks = display_ranks,
                    y = i - 1
                },
                {
                    key = "hc",
                    atlas = atlas_hc.key,
                    pos_style = "deck",
                    ranks = ranks,
                    display_ranks = display_ranks,
                    y = i - 1
                }
            }
        }
    end

end


