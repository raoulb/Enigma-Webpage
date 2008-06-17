
-- LotM standing data
-- (no need to change these)

lotm_archive_data = {}

lotm_archive_data[1] = {
  date           = { month = 3, year = 2007 },
  chronological  = 1,
  name           = "Island Labyrinth",
  author         = "Jacob Scott",
  position       = "V/100",
  position_num   = "5100"
}

lotm_archive_data[2] = {
  date           = { month = 4, year = 2007 },
  chronological  = 2,
  name           = "Pneumatic Delivery",
  author         = "Manuel K&ouml;nig",
  position       = "V/59",
  position_num   = "5059"
}

lotm_archive_data[3] = {
  date           = { month = 5, year = 2007 },
  chronological  = 3,
  name           = "The Aztec Temple",
  author         = "Dominik Lehmann",
  position       = "VI/100",
  position_num   = "6100"
}

lotm_archive_data[4] = {
  date           = { month = 6, year = 2007 },
  chronological  = 4,
  name           = "Labyrinth of Puzzles",
  author         = "Jacob Scott",
  position       = "IV/19",
  position_num   = "4019"
}

lotm_archive_data[5] = {
  date           = { month = 7, year = 2007 },
  chronological  = 5,
  name           = "Elaborate",
  author         = "Jacob Scott",
  position       = "V/65",
  position_num   = "5065"
}

lotm_archive_data[6] = {
  date           = { month = 8, year = 2007 },
  chronological  = 6,
  name           = "Houdini",
  author         = "Ronald Lamprecht",
  position       = "VI/74",
  position_num   = "6074"
}

lotm_archive_data[7] = {
  date           = { month = 9, year = 2007 },
  chronological  = 7,
  name           = "Tool Time",
  author         = "Barry &amp; Lori Mead",
  position       = "II/97",
  position_num   = "2097"
}

lotm_archive_data[8] = {
  date           = { month = 10, year = 2007 },
  chronological  = 8,
  name           = "Quadropolis",
  author         = "J.Laire, J.Scott, R.Bourquin, A.Lochmann",
  position       = "VI/79",
  position_num   = "6079"
}

lotm_archive_data[9] = {
  date           = { month = 11, year = 2007 },
  chronological  = 9,
  name           = "Big Adventures",
  author         = "Jon 'WB' Sneyers",
  position       = "IV/100",
  position_num   = "4100"
}

lotm_archive_data[10] = {
  date           = { month = 12, year = 2007 },
  chronological  = 10,
  name           = "Temple of Gold",
  author         = "J.Scott, R.Lamprecht",
  position       = "VII/24",
  position_num   = "7024"
}

lotm_archive_data[11] = {
  date           = { month = 2, year = 2008 },
  chronological  = 11,
  name           = "Puzzle Puzzles",
  author         = "Raoul Bourquin",
  position       = "VI/55",
  position_num   = "6055"
}

lotm_archive_data[12] = {
  date           = { month = 3, year = 2008 },
  chronological  = 12,
  name           = "Psycho Pushing",
  author         = "Sven Siggelkow",
  position       = "V/45",
  position_num   = "5045"
}

lotm_archive_data[13] = {
  date           = { month = 4, year = 2008 },
  chronological  = 13,
  name           = "Turnstiles for Two",
  author         = "Ronald Lamprecht",
  position       = "VI/77",
  position_num   = "6077"
}

lotm_archive_data[14] = {
  date           = { month = 5, year = 2008 },
  chronological  = 14,
  name           = "Pleasure Garden",
  author         = "Jacob Scott",
  position       = "VI/95",
  position_num   = "6095"
}

lotm_archive_data[15] = {
  date           = { month = 6, year = 2008 },
  chronological  = 15,
  name           = "Block its way!",
  author         = "Jon 'WB' Sneyers",
  position       = "III/66",
  position_num   = "3066"
}

-- LotM variable data
-- format: Level Title, current_rating, current_votes, additional text

lotm_rating(    "Island Labyrinth",  9.31,  13,  "")
lotm_rating(  "Pneumatic Delivery",  8.19,  16,  "")
lotm_rating(    "The Aztec Temple",  9.00,  11,  "")
lotm_rating("Labyrinth of Puzzles",  8.82,  17,  "")
lotm_rating(           "Elaborate",  8.50,  10,  "")
lotm_rating(             "Houdini",  9.28,   8,  "")
lotm_rating(           "Tool Time",  8.52,  21,  "")
lotm_rating(         "Quadropolis",  9.20,  10,  "")
lotm_rating(      "Big Adventures",  8.42,  24,  "")
lotm_rating(      "Temple of Gold",  9.29,   7,  "")
lotm_rating(      "Puzzle Puzzles",  8.83,   6,  "")
lotm_rating(      "Psycho Pushing",  8.18,  11,  "")
lotm_rating(  "Turnstiles for Two",  9.00,   5,  "")
lotm_rating(     "Pleasure Garden",  8.43,  14,  "")
lotm_rating(      "Block its way!",  8.00,  16,  "<b>(newcomer)</b>")

-- Don't forget to adjust the archive dates:

lotm_archive_data_from = { month = 5, year = 2008 }

lotm_current = lotm_archive_data[table.getn(lotm_archive_data)]


