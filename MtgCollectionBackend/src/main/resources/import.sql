
INSERT INTO Player (id, name) VALUES (1, 'Jace Beleren');
INSERT INTO Player (id, name) VALUES (2, 'Chandra Nalaar');

INSERT INTO Deck (id, name, player_id) VALUES (3, 'Eldrazi Ramp', 1);
INSERT INTO Card (id, name, type, mana_cost, rarity, converted_mana_cost, price) VALUES
(10, 'Bojuka Bog', 'LAND', NULL, 'UNCOMMON', 0, 0.50),
(11, 'Cavern of Souls', 'LAND', NULL, 'RARE', 0, 50.00),
(12, 'Commercial District', 'LAND', NULL, 'RARE', 0, 0.25),
(13, 'Devourer of Destiny', 'CREATURE', '3GG', 'RARE', 5, 0.35),
(14, 'Eldrazi Temple', 'LAND', NULL, 'UNCOMMON', 0, 4.00),
(15, 'Emrakul, the Promised End', 'CREATURE', '13', 'MYTHIC', 13, 6.00),
(16, 'Forest', 'LAND', NULL, 'COMMON', 0, 0.10),
(17, 'Karn, the Great Creator', 'PLANESWALKER', '4', 'RARE', 4, 10.00),
(18, 'Kozilek''s Command', 'INSTANT', '2C', 'RARE', 3, 0.20),
(19, 'Kozilek''s Return', 'INSTANT', '2R', 'RARE', 3, 1.00),
(20, 'Malevolent Rumble', 'SORCERY', '2B', 'UNCOMMON', 3, 0.25),
(21, 'Misty Rainforest', 'LAND', NULL, 'RARE', 0, 22.00),
(22, 'Sanctum of Ugin', 'LAND', NULL, 'UNCOMMON', 0, 1.50),
(23, 'Sowing Mycospawn', 'CREATURE', '3G', 'UNCOMMON', 4, 0.30),
(24, 'Stomping Ground', 'LAND', NULL, 'RARE', 0, 11.00),
(25, 'Talisman of Impulse', 'ARTIFACT', '2', 'UNCOMMON', 2, 0.80),
(26, 'Ugins Labyrinth', 'LAND', NULL, 'RARE', 0, 3.00),
(27, 'Utopia Sprawl', 'ENCHANTMENT', 'G', 'COMMON', 1, 3.50),
(28, 'Windswept Heath', 'LAND', NULL, 'RARE', 0, 20.00),
(29, 'World Breaker', 'CREATURE', '6G', 'RARE', 7, 0.90),
(30, 'Writhing Chrysalis', 'CREATURE', '3BB', 'RARE', 5, 0.40);

INSERT INTO Deck_Card (deck_id, card_id, quantity) VALUES
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(3, 13, 3),
(3, 14, 4),
(3, 15, 3),
(3, 16, 4),
(3, 17, 4),
(3, 18, 4),
(3, 19, 3),
(3, 20, 4),
(3, 21, 2),
(3, 22, 1),
(3, 23, 4),
(3, 24, 2),
(3, 25, 4),
(3, 26, 4),
(3, 27, 4),
(3, 28, 2),
(3, 29, 3),
(3, 30, 2);

INSERT INTO Deck (id, name, player_id) VALUES (4, 'Amulet Titan', 1);
INSERT INTO Card (id, name, type, mana_cost, rarity, converted_mana_cost, price) VALUES
(31, 'Aftermath Analyst', 'CREATURE', '1G', 'RARE', 2, 0.20),
(32, 'Amulet of Vigor', 'ARTIFACT', '1', 'RARE', 1, 5.00),
(33, 'Arboreal Grazer', 'CREATURE', 'G', 'COMMON', 1, 0.10),
(34, 'Boseiju, Who Endures', 'LAND', NULL, 'RARE', 0, 30.00),
(35, 'Crumbling Vestige', 'LAND', NULL, 'UNCOMMON', 0, 0.30),
(36, 'Cultivator Colossus', 'CREATURE', '4GGG', 'MYTHIC', 7, 12.00),
(37, 'Dryad of the Ilysian Grove', 'CREATURE', '2G', 'RARE', 3, 8.00),
(38, 'Echoing Deeps', 'LAND', NULL, 'RARE', 0, 0.25),
(39, 'Expedition Map', 'ARTIFACT', '1', 'UNCOMMON', 1, 1.00),
(40, 'Explore', 'SORCERY', '1G', 'COMMON', 2, 0.20),
(41, 'Golgari Rot Farm', 'LAND', NULL, 'UNCOMMON', 0, 0.50),
(42, 'Gruul Turf', 'LAND', NULL, 'UNCOMMON', 0, 0.30),
(43, 'Hanweir Battlements', 'LAND', NULL, 'RARE', 0, 2.00),
(44, 'Lotus Field', 'LAND', NULL, 'RARE', 0, 3.00),
(45, 'Mirrorpool', 'LAND', NULL, 'RARE', 0, 1.50),
(46, 'Otawara, Soaring City', 'LAND', NULL, 'RARE', 0, 12.00),
(47, 'Primeval Titan', 'CREATURE', '4GG', 'MYTHIC', 6, 6.00),
(48, 'Scapeshift', 'SORCERY', '2GG', 'RARE', 4, 2.50),
(49, 'Shifting Woodland', 'LAND', NULL, 'RARE', 0, 0.20),
(50, 'Simic Growth Chamber', 'LAND', NULL, 'COMMON', 0, 0.30),
(51, 'Spelunking', 'ENCHANTMENT', '2G', 'UNCOMMON', 3, 0.50),
(52, 'Summoner''s Pact', 'INSTANT', '0', 'RARE', 0, 3.00),
(53, 'Tolaria West', 'LAND', NULL, 'UNCOMMON', 0, 1.20),
(54, 'Urza''s Saga', 'LAND', NULL, 'RARE', 0, 35.00),
(55, 'Valakut, the Molten Pinnacle', 'LAND', NULL, 'RARE', 0, 1.50),
(56, 'Vesuva', 'LAND', NULL, 'RARE', 0, 2.00);

INSERT INTO Deck_Card (deck_id, card_id, quantity) VALUES
(4, 31, 1),
(4, 32, 4),
(4, 33, 4),
(4, 34, 3),
(4, 35, 4),
(4, 36, 1),
(4, 37, 1),
(4, 38, 1),
(4, 39, 1),
(4, 40, 3),
(4, 16, 4),  -- Reuse 'Forest' (already has ID 16)
(4, 41, 2),
(4, 42, 1),
(4, 43, 1),
(4, 44, 2),
(4, 45, 1),
(4, 46, 1),
(4, 47, 4),
(4, 48, 3),
(4, 49, 1),
(4, 50, 4),
(4, 51, 4),
(4, 52, 2),
(4, 53, 1),
(4, 54, 4),
(4, 55, 1),
(4, 56, 1);

INSERT INTO Deck (id, name, player_id) VALUES (5, 'Grixis Deaths Shadow', 2);

INSERT INTO Card (id, name, type, mana_cost, rarity, converted_mana_cost, price) VALUES
(57, 'Blood Crypt', 'LAND', NULL, 'RARE', 0, 10.00),
(58, 'Bloodstained Mire', 'LAND', NULL, 'RARE', 0, 12.00),
(59, 'Cling to Dust', 'INSTANT', 'B', 'UNCOMMON', 1, 0.25),
(60, 'Counterspell', 'INSTANT', 'UU', 'UNCOMMON', 2, 0.75),
(61, 'Deaths Shadow', 'CREATURE', 'B', 'RARE', 1, 3.00),
(62, 'Dismember', 'INSTANT', '1B/P', 'UNCOMMON', 2, 1.00),
(63, 'Dress Down', 'ENCHANTMENT', '1U', 'RARE', 2, 1.50),
(64, 'Expressive Iteration', 'SORCERY', 'UR', 'RARE', 2, 3.50),
(65, 'Fatal Push', 'INSTANT', 'B', 'UNCOMMON', 1, 2.00),
(66, 'Flooded Strand', 'LAND', NULL, 'RARE', 0, 17.00),
(67, 'Force of Negation', 'INSTANT', '1UU', 'RARE', 3, 35.00),
(68, 'Molten Collapse', 'SORCERY', 'BR', 'RARE', 2, 0.30),
(69, 'Murktide Regent', 'CREATURE', '5UU', 'MYTHIC', 7, 15.00),
(70, 'Polluted Delta', 'LAND', NULL, 'RARE', 0, 16.00),
(71, 'Preordain', 'SORCERY', 'U', 'COMMON', 1, 0.20),
(72, 'Psychic Frog', 'CREATURE', '1U', 'RARE', 2, 0.40),
(73, 'Ragavan, Nimble Pilferer', 'CREATURE', 'R', 'MYTHIC', 1, 60.00),
(74, 'Spell Snare', 'INSTANT', 'U', 'UNCOMMON', 1, 0.60),
(75, 'Steam Vents', 'LAND', NULL, 'RARE', 0, 11.00),
(76, 'Swamp', 'LAND', NULL, 'COMMON', 0, 0.10),
(77, 'Thoughtseize', 'SORCERY', 'B', 'RARE', 1, 13.00),
(78, 'Undercity Sewers', 'LAND', NULL, 'UNCOMMON', 0, 0.20),
(79, 'Watery Grave', 'LAND', NULL, 'RARE', 0, 14.00);

INSERT INTO Deck_Card (deck_id, card_id, quantity) VALUES
(5, 57, 2),
(5, 58, 4),
(5, 59, 1),
(5, 60, 3),
(5, 61, 4),
(5, 62, 2),
(5, 63, 2),
(5, 64, 4),
(5, 65, 3),
(5, 66, 1),
(5, 67, 3),
(5, 68, 2),
(5, 69, 2),
(5, 70, 4),
(5, 71, 2),
(5, 72, 4),
(5, 73, 4),
(5, 74, 2),
(5, 75, 2),
(5, 76, 1),
(5, 77, 4),
(5, 78, 1),
(5, 79, 3);


-- Collections for Player 1 (id = 1, Jace Beleren)
INSERT INTO Collection (id, name, player_id) VALUES (1, 'Favorite Lands', 1);
INSERT INTO Collection (id, name, player_id) VALUES (2, 'Spell & Creatures', 1);

-- Collections for Player 2 (id = 2, Chandra Nalaar)
INSERT INTO Collection (id, name, player_id) VALUES (3, 'Grixis Staples', 2);
INSERT INTO Collection (id, name, player_id) VALUES (4, 'Combo & Interactions', 2);

-- Populate Collection 1 ('Favorite Lands') for Player 1
INSERT INTO collection_card (collection_id, card_id, quantity) VALUES
                                                                   (1, 10, 1),  -- Bojuka Bog
                                                                   (1, 11, 1),  -- Cavern of Souls
                                                                   (1, 14, 1),  -- Eldrazi Temple
                                                                   (1, 16, 2),  -- Forest (used twice)
                                                                   (1, 21, 1);  -- Misty Rainforest

-- Populate Collection 2 ('Spell & Creatures') for Player 1
INSERT INTO collection_card (collection_id, card_id, quantity) VALUES
                                                                   (2, 13, 2),  -- Devourer of Destiny
                                                                   (2, 15, 1),  -- Emrakul, the Promised End
                                                                   (2, 17, 1),  -- Karn, the Great Creator
                                                                   (2, 29, 2),  -- World Breaker
                                                                   (2, 30, 1);  -- Writhing Chrysalis

-- Populate Collection 3 ('Grixis Staples') for Player 2
INSERT INTO collection_card (collection_id, card_id, quantity) VALUES
                                                                   (3, 57, 2),  -- Blood Crypt
                                                                   (3, 60, 1),  -- Counterspell
                                                                   (3, 61, 3),  -- Deaths Shadow
                                                                   (3, 66, 1),  -- Flooded Strand
                                                                   (3, 77, 2);  -- Thoughtseize

-- Populate Collection 4 ('Combo & Interactions') for Player 2
INSERT INTO collection_card (collection_id, card_id, quantity) VALUES
                                                                   (4, 64, 2),  -- Expressive Iteration
                                                                   (4, 67, 1),  -- Force of Negation
                                                                   (4, 69, 1),  -- Murktide Regent
                                                                   (4, 73, 1),  -- Ragavan, Nimble Pilferer
                                                                   (4, 75, 1);  -- Steam Vents
