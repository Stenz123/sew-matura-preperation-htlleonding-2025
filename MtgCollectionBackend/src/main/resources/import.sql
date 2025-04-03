
INSERT INTO Player (id, name, wins) VALUES (1, 'Jace Beleren', 2);
INSERT INTO Player (id, name, wins) VALUES (2, 'Chandra Nalaar', 1);

INSERT INTO Deck (id, name, player_id) VALUES (3, 'Eldrazi Ramp', 1);
INSERT INTO Card (id, name, type, mana_cost, rarity, converted_mana_cost, price, uri) VALUES
                                                                                          (10, 'Bojuka Bog', 'LAND', NULL, 'UNCOMMON', 0, 0.5, 'https://cards.scryfall.io/normal/front/3/8/38834333-f9ea-43a8-b00a-17935d59eaea.jpg?1743207439'),
                                                                                          (11, 'Cavern of Souls', 'LAND', NULL, 'RARE', 0, 50.0, 'https://cards.scryfall.io/normal/front/3/a/3aad15a2-8a1b-4460-9b06-e85863081878.jpg?1706884128'),
                                                                                          (12, 'Commercial District', 'LAND', NULL, 'RARE', 0, 0.25, 'https://cards.scryfall.io/normal/front/b/f/bf220c06-3cce-4bdd-aa58-83940c223e9c.jpg?1706242338'),
                                                                                          (13, 'Devourer of Destiny', 'CREATURE', '3GG', 'RARE', 5, 0.35, 'https://cards.scryfall.io/normal/front/5/6/560debcd-feb4-4534-991e-a7aa1cca2409.jpg?1740308386'),
                                                                                          (14, 'Eldrazi Temple', 'LAND', NULL, 'UNCOMMON', 0, 4.0, 'https://cards.scryfall.io/normal/front/c/b/cbab7e1f-305e-4733-aa70-b27285740925.jpg?1690006046'),
                                                                                          (15, 'Emrakul, the Promised End', 'CREATURE', '13', 'MYTHIC', 13, 6.0, 'https://cards.scryfall.io/normal/front/7/1/71911392-42b0-4b6d-baf7-918a4bd3b924.jpg?1736467435'),
                                                                                          (16, 'Forest', 'LAND', NULL, 'COMMON', 0, 0.1, 'https://cards.scryfall.io/normal/front/8/1/8100bceb-ffba-487a-bb45-4fe2a156a8dc.jpg?1743205126'),
                                                                                          (17, 'Karn, the Great Creator', 'PLANESWALKER', '4', 'RARE', 4, 10.0, 'https://cards.scryfall.io/normal/front/d/e/deb3721d-fba1-444f-8b31-1cd10c94c4a0.jpg?1702429246'),
                                                                                          (18, 'Kozilek''s Command', 'INSTANT', '2C', 'RARE', 3, 0.2, 'https://cards.scryfall.io/normal/front/9/2/92585587-cfdc-406a-9114-4f6dd8802c37.jpg?1740308391'),
                                                                                          (19, 'Kozilek''s Return', 'INSTANT', '2R', 'RARE', 3, 1.0, 'https://cards.scryfall.io/normal/front/7/2/72765559-0a78-4aa3-827e-cb4612720991.jpg?1618608556'),
                                                                                          (20, 'Malevolent Rumble', 'SORCERY', '2B', 'UNCOMMON', 3, 0.25, 'https://cards.scryfall.io/normal/front/a/1/a178cfe8-f9fa-4255-88d0-54a0bed079f5.jpg?1717012517'),
                                                                                          (21, 'Misty Rainforest', 'LAND', NULL, 'RARE', 0, 22.0, 'https://cards.scryfall.io/normal/front/8/8/88231c0d-0cc8-44ec-bf95-81d1710ac141.jpg?1738703648'),
                                                                                          (22, 'Sanctum of Ugin', 'LAND', NULL, 'UNCOMMON', 0, 1.5, 'https://cards.scryfall.io/normal/front/8/6/86798d03-9f2d-46bd-a660-13c8dd5535ce.jpg?1562926694'),
                                                                                          (23, 'Sowing Mycospawn', 'CREATURE', '3G', 'UNCOMMON', 4, 0.3, 'https://cards.scryfall.io/normal/front/c/d/cdfadb17-76ad-4d4d-9fa7-33c4b88b4c0a.jpg?1743419005'),
                                                                                          (24, 'Stomping Ground', 'LAND', NULL, 'RARE', 0, 11.0, 'https://cards.scryfall.io/normal/front/8/7/872301b2-b6e7-4972-a479-66a7e304c1d3.jpg?1702429826'),
                                                                                          (25, 'Talisman of Impulse', 'ARTIFACT', '2', 'UNCOMMON', 2, 0.8, 'https://cards.scryfall.io/normal/front/5/1/5135919f-7b10-4a2e-a98a-83ed1347ad36.jpg?1743207387'),
                                                                                          (26, 'Ugins Labyrinth', 'LAND', NULL, 'RARE', 0, 3.0, 'https://cards.scryfall.io/normal/front/0/2/020e1348-1a35-4cc8-bad6-9fbddfa79277.jpg?1717013086'),
                                                                                          (27, 'Utopia Sprawl', 'ENCHANTMENT', 'G', 'COMMON', 1, 3.5, 'https://cards.scryfall.io/normal/front/5/e/5ea568df-04a1-4012-98ec-ba75e189e0ca.jpg?1702429591'),
                                                                                          (28, 'Windswept Heath', 'LAND', NULL, 'RARE', 0, 20.0, 'https://cards.scryfall.io/normal/front/b/d/bd1d13f7-fd38-4f0b-a8e0-1eac78668117.jpg?1717013102'),
                                                                                          (29, 'World Breaker', 'CREATURE', '6G', 'RARE', 7, 0.9, 'https://cards.scryfall.io/normal/front/0/0/0020a124-ba76-4d40-84e9-9803268d9f16.jpg?1562895014'),
                                                                                          (30, 'Writhing Chrysalis', 'CREATURE', '3BB', 'RARE', 5, 0.4, 'https://cards.scryfall.io/normal/front/f/5/f54dbeb1-51f8-40e2-912a-ec25457de5a2.jpg?1717012884');

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
INSERT INTO Card (id, name, type, mana_cost, rarity, converted_mana_cost, price, uri) VALUES
    (31, 'Aftermath Analyst', 'CREATURE', '1G', 'RARE', 2, 0.2, 'https://cards.scryfall.io/normal/front/1/c/1c1aa6f8-2d34-4f4b-9184-0eab2e4745f7.jpg?1706241934'),
    (32, 'Amulet of Vigor', 'ARTIFACT', '1', 'RARE', 1, 5.0, 'https://cards.scryfall.io/normal/front/9/9/997bc933-ac30-477b-a4e1-5333b796a99d.jpg?1562292191'),
    (33, 'Arboreal Grazer', 'CREATURE', 'G', 'COMMON', 1, 0.1, 'https://cards.scryfall.io/normal/front/9/e/9eb7b2ae-a364-485b-ae75-10dbb0af5541.jpg?1743206863'),
    (34, 'Boseiju, Who Endures', 'LAND', NULL, 'RARE', 0, 30.0, 'https://cards.scryfall.io/normal/front/2/1/2135ac5a-187b-4dc9-8f82-34e8d1603416.jpg?1654568912'),
    (35, 'Crumbling Vestige', 'LAND', NULL, 'UNCOMMON', 0, 0.3, 'https://cards.scryfall.io/normal/front/d/4/d491c13c-43e3-4ca3-b888-4edd34dfe14a.jpg?1562937635'),
    (36, 'Cultivator Colossus', 'CREATURE', '4GGG', 'MYTHIC', 7, 12.0, 'https://cards.scryfall.io/normal/front/4/2/426ed66e-41b3-4e44-90a2-697aafaa8c5c.jpg?1736468298'),
    (37, 'Dryad of the Ilysian Grove', 'CREATURE', '2G', 'RARE', 3, 8.0, 'https://cards.scryfall.io/normal/front/4/3/43be1363-7e73-4862-b45f-07f490ab46be.jpg?1690004795'),
    (38, 'Echoing Deeps', 'LAND', NULL, 'RARE', 0, 0.25, 'https://cards.scryfall.io/normal/front/2/4/244c06b3-532d-426e-8bee-ee9461d092a6.jpg?1699044671'),
    (39, 'Expedition Map', 'ARTIFACT', '1', 'UNCOMMON', 1, 1.0, 'https://cards.scryfall.io/normal/front/0/8/08e66835-c228-48fa-bcaa-eb96edbd4f5a.jpg?1730572768'),
(40, 'Explore', 'SORCERY', '1G', 'COMMON', 2, 0.2, 'https://cards.scryfall.io/normal/front/3/9/3976affd-8c2b-499a-a946-b629c2ba59c7.jpg?1712354565'),
(41, 'Golgari Rot Farm', 'LAND', NULL, 'UNCOMMON', 0, 0.5, 'https://cards.scryfall.io/normal/front/a/c/acc5821d-e31f-4f5d-b4d0-e471db7dee7f.jpg?1743207591'),
(42, 'Gruul Turf', 'LAND', NULL, 'UNCOMMON', 0, 0.3, 'https://cards.scryfall.io/normal/front/4/6/46677091-b314-4fa7-9c5c-f9ef8632dc4c.jpg?1706240260'),
(43, 'Hanweir Battlements', 'LAND', NULL, 'RARE', 0, 2.0, 'https://cards.scryfall.io/normal/front/8/c/8c0acb91-edfc-43a5-af77-6614327fce43.jpg?1738701417'),
(44, 'Lotus Field', 'LAND', NULL, 'RARE', 0, 3.0, 'https://cards.scryfall.io/normal/front/0/e/0e013033-3995-4ba8-b0c3-0614c79aaaab.jpg?1592517825'),
(45, 'Mirrorpool', 'LAND', NULL, 'RARE', 0, 1.5, 'https://cards.scryfall.io/normal/front/0/4/0441cd2c-3646-4c69-ae97-ad3bcea7466f.jpg?1690006270'),
    (46, 'Otawara, Soaring City', 'LAND', NULL, 'RARE', 0, 12.0, 'https://cards.scryfall.io/normal/front/4/8/486d7edc-d983-41f0-8b78-c99aecd72996.jpg?1654568960'),
    (47, 'Primeval Titan', 'CREATURE', '4GG', 'MYTHIC', 6, 6.0, 'https://cards.scryfall.io/normal/front/6/d/6d5537da-112e-4679-a113-b5d7ce32a66b.jpg?1562850064'),
    (48, 'Scapeshift', 'SORCERY', '2GG', 'RARE', 4, 2.5, 'https://cards.scryfall.io/normal/front/1/7/175e21a3-00f7-4c51-8a8e-fbfd7089efda.jpg?1574767873'),
    (49, 'Shifting Woodland', 'LAND', NULL, 'RARE', 0, 0.2, 'https://cards.scryfall.io/normal/front/0/5/059164e1-894d-4586-9800-e60d6fbd6eb6.jpg?1717013047'),
    (50, 'Simic Growth Chamber', 'LAND', NULL, 'COMMON', 0, 0.3, 'https://cards.scryfall.io/normal/front/2/1/212d97c5-c144-483b-b42e-00623477e928.jpg?1726285492'),
    (51, 'Spelunking', 'ENCHANTMENT', '2G', 'UNCOMMON', 3, 0.5, 'https://cards.scryfall.io/normal/front/d/3/d3be4257-2316-4a2e-b347-f71c0368a947.jpg?1699044491'),
    (52, 'Summoner''s Pact', 'INSTANT', '0', 'RARE', 0, 3.0, 'https://cards.scryfall.io/normal/front/e/e/ee0f88ac-8a90-4057-b0e6-c15fbd02da38.jpg?1619398774'),
    (53, 'Tolaria West', 'LAND', NULL, 'UNCOMMON', 0, 1.2, 'https://cards.scryfall.io/normal/front/b/0/b005eef6-75f3-454f-a42b-d851bc84ac4e.jpg?1619399546'),
    (54, 'Urza''s Saga', 'LAND', NULL, 'RARE', 0, 35.0, 'https://cards.scryfall.io/normal/front/c/1/c1e0f201-42cb-46a1-901a-65bb4fc18f6c.jpg?1667318301'),
    (55, 'Valakut, the Molten Pinnacle', 'LAND', NULL, 'RARE', 0, 1.5, 'https://cards.scryfall.io/normal/front/3/7/37bce60d-2cb0-4772-9f5c-122a7ed426a0.jpg?1562611305'),
    (56, 'Vesuva', 'LAND', NULL, 'RARE', 0, 2.0, 'https://cards.scryfall.io/normal/front/0/7/0726f70a-c1c4-4edb-86fb-9be280d9ea73.jpg?1619399642');

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

INSERT INTO Card (id, name, type, mana_cost, rarity, converted_mana_cost, price, uri) VALUES
                                                                                          (57, 'Blood Crypt', 'LAND', NULL, 'RARE', 0, 10.0, 'https://cards.scryfall.io/normal/front/0/9/0994aef4-b341-45f4-8881-523565a5956e.jpg?1702429795'),
                                                                                          (58, 'Bloodstained Mire', 'LAND', NULL, 'RARE', 0, 12.0, 'https://cards.scryfall.io/normal/front/5/7/579743fe-f71e-4cb2-8629-d6b02ed1591d.jpg?1717012950'),
                                                                                          (59, 'Cling to Dust', 'INSTANT', 'B', 'UNCOMMON', 1, 0.25, 'https://cards.scryfall.io/normal/front/5/2/52c2de5f-e486-4cfe-9fb6-be0078ce5f93.jpg?1581479717'),
                                                                                          (60, 'Counterspell', 'INSTANT', 'UU', 'UNCOMMON', 2, 0.75, 'https://cards.scryfall.io/normal/front/4/f/4f616706-ec97-4923-bb1e-11a69fbaa1f8.jpg?1726837907'),
                                                                                          (61, 'Deaths Shadow', 'CREATURE', 'B', 'RARE', 1, 3.0, 'https://cards.scryfall.io/normal/front/5/5/5526ff6e-c079-4ad4-ac8d-5e26ecacf50d.jpg?1598304517'),
                                                                                          (62, 'Dismember', 'INSTANT', '1B/P', 'UNCOMMON', 2, 1.0, 'https://cards.scryfall.io/normal/front/3/d/3d286cf6-3e16-4941-9326-1818b1e06d69.jpg?1562261132'),
                                                                                          (63, 'Dress Down', 'ENCHANTMENT', '1U', 'RARE', 2, 1.5, 'https://cards.scryfall.io/normal/front/0/4/04f9f061-67b8-4427-9fcb-b3ccfee8fc5d.jpg?1626094290'),
                                                                                          (64, 'Expressive Iteration', 'SORCERY', 'UR', 'RARE', 2, 3.5, 'https://cards.scryfall.io/normal/front/4/5/45e92d69-0684-4a57-8c1c-bbf742bd8a23.jpg?1743207125'),
                                                                                          (65, 'Fatal Push', 'INSTANT', 'B', 'UNCOMMON', 1, 2.0, 'https://cards.scryfall.io/normal/front/6/e/6e9d8fe4-fd9b-4923-92bf-7dd6b8fa02e7.jpg?1598304715'),
                                                                                          (66, 'Flooded Strand', 'LAND', NULL, 'RARE', 0, 17.0, 'https://cards.scryfall.io/normal/front/8/f/8f85e12c-196b-4459-b81f-0c9c854e9f57.jpg?1717012985'),
                                                                                          (67, 'Force of Negation', 'INSTANT', '1UU', 'RARE', 3, 35.0, 'https://cards.scryfall.io/normal/front/1/8/1825a719-1b2a-4af9-9cd2-7cb497cd0317.jpg?1673147298'),
                                                                                          (68, 'Molten Collapse', 'SORCERY', 'BR', 'RARE', 2, 0.3, 'https://cards.scryfall.io/normal/front/2/4/2487d124-210b-4808-888c-cd0a78aebd90.jpg?1699044556'),
                                                                                          (69, 'Murktide Regent', 'CREATURE', '5UU', 'MYTHIC', 7, 15.0, 'https://cards.scryfall.io/normal/front/2/0/20c4aae1-7665-4df7-bd51-a1d95bf8a17d.jpg?1626094651'),
                                                                                          (70, 'Polluted Delta', 'LAND', NULL, 'RARE', 0, 16.0, 'https://cards.scryfall.io/normal/front/6/e/6e288374-2b71-4ace-b1d2-a19fee6cb4af.jpg?1717013017'),
                                                                                          (71, 'Preordain', 'SORCERY', 'U', 'COMMON', 1, 0.2, 'https://cards.scryfall.io/normal/front/d/d/dd29a0e5-c1de-4e8a-8866-715e9f9cde1f.jpg?1743206370'),
                                                                                          (72, 'Psychic Frog', 'CREATURE', '1U', 'RARE', 2, 0.4, 'https://cards.scryfall.io/normal/front/6/8/68924203-c3d9-41ce-8ca8-c6dd491eb3ca.jpg?1737917460'),
                                                                                          (73, 'Ragavan, Nimble Pilferer', 'CREATURE', 'R', 'MYTHIC', 1, 60.0, 'https://cards.scryfall.io/normal/front/a/9/a9738cda-adb1-47fb-9f4c-ecd930228c4d.jpg?1681963138'),
                                                                                          (74, 'Spell Snare', 'INSTANT', 'U', 'UNCOMMON', 1, 0.6, 'https://cards.scryfall.io/normal/front/7/2/72122836-a2f3-4001-9f08-93a7bf011ab1.jpg?1562917785'),
                                                                                          (75, 'Steam Vents', 'LAND', NULL, 'RARE', 0, 11.0, 'https://cards.scryfall.io/normal/front/6/6/66d618f4-443c-4a6c-8cbd-5d4ea96b2cd4.jpg?1702429824'),
                                                                                          (76, 'Swamp', 'LAND', NULL, 'COMMON', 0, 0.1, 'https://cards.scryfall.io/normal/front/f/0/f0bfdb9e-318f-4acd-9fbd-41b98a8875d6.jpg?1743205109'),
                                                                                          (77, 'Thoughtseize', 'SORCERY', 'B', 'RARE', 1, 13.0, 'https://cards.scryfall.io/normal/front/b/2/b281a308-ab6b-47b6-bec7-632c9aaecede.jpg?1599706001'),
                                                                                          (78, 'Undercity Sewers', 'LAND', NULL, 'UNCOMMON', 0, 0.2, 'https://cards.scryfall.io/normal/front/2/b/2b5801fb-2026-4f25-98bc-ebb2f99684b9.jpg?1706242367'),
                                                                                          (79, 'Watery Grave', 'LAND', NULL, 'RARE', 0, 14.0, 'https://cards.scryfall.io/normal/front/6/e/6e86eb36-f4cc-4a75-b43a-4dee463a3b33.jpg?1702429828');


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
