-- HEARTS (Lucid1 & LucidHiC1)
SMODS.Atlas { key = "lucid_h", path = "Lucid1.png", px = 71, py = 95, raw_key = true }
SMODS.Atlas { key = "lucid_h_hc", path = "LucidHiC1.png", px = 71, py = 95, raw_key = true }
SMODS.DeckSkin {
    key = "skin_hearts",
    suit = "Hearts",
    palettes = {
        {
            key = "lc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_h"
        },
        {
            key = "hc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_h_hc"
        }
    }
}

-- DIAMONDS (Lucid2 & LucidHiC2)
SMODS.Atlas { key = "lucid_d", path = "Lucid2.png", px = 71, py = 95, raw_key = true }
SMODS.Atlas { key = "lucid_d_hc", path = "LucidHiC2.png", px = 71, py = 95, raw_key = true }
SMODS.DeckSkin {
    key = "skin_diamonds",
    suit = "Diamonds",
    palettes = {
        {
            key = "lc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_d"
        },
        {
            key = "hc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_d_hc"
        }
    }
}

-- CLUBS (Lucid3 & LucidHiC3)
SMODS.Atlas { key = "lucid_c", path = "Lucid3.png", px = 71, py = 95, raw_key = true }
SMODS.Atlas { key = "lucid_c_hc", path = "LucidHiC3.png", px = 71, py = 95, raw_key = true }
SMODS.DeckSkin {
    key = "skin_clubs",
    suit = "Clubs",
    palettes = {
        {
            key = "lc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_c"
        },
        {
            key = "hc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_c_hc"
        }
    }
}

-- SPADES (Lucid4 & LucidHiC4)
SMODS.Atlas { key = "lucid_s", path = "Lucid4.png", px = 71, py = 95, raw_key = true }
SMODS.Atlas { key = "lucid_s_hc", path = "LucidHiC4.png", px = 71, py = 95, raw_key = true }
SMODS.DeckSkin {
    key = "skin_spades",
    suit = "Spades",
    palettes = {
        {
            key = "lc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_s"
        },
        {
            key = "hc",
            ranks = { "Jack", "Queen", "King" },
            pos_style = "ranks",
            atlas = "lucid_s_hc"
        }
    }
}

-- Fix the hex code name glitch by forcing strings directly into the game text engine
function SMODS.init()
    if G and G.localization and G.localization.misc and G.localization.misc.v_text then
        G.localization.misc.v_text["skin_hearts"] = "Lucid Hearts"
        G.localization.misc.v_text["skin_diamonds"] = "Lucid Diamonds"
        G.localization.misc.v_text["skin_clubs"] = "Lucid Clubs"
        G.localization.misc.v_text["skin_spades"] = "Lucid Spades"
        
        -- Fallback check for prefixed string keys
        G.localization.misc.v_text["lucid_skin_hearts"] = "Lucid Hearts"
        G.localization.misc.v_text["lucid_skin_diamonds"] = "Lucid Diamonds"
        G.localization.misc.v_text["lucid_skin_clubs"] = "Lucid Clubs"
        G.localization.misc.v_text["lucid_skin_spades"] = "Lucid Spades"
    end
end

