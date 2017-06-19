create database duelystation2;
use duelystation2;

create table duelystation_user(
du_email varchar(255) ,
du_username varchar(255) primary key not null,
du_realname varchar(255),
du_realsurname varchar(255),
du_password varchar(255));

create table duelyst_cards(
dc_id int primary key not null auto_increment,
dc_faction varchar(255),
dc_rarity varchar(255),
dc_name varchar(255),
dc_description varchar(255),
dc_manaCost int,
dc_type varchar(255),
dc_race varchar(255),
dc_attack int,
dc_health int);
/*MEGA INSERTS*/

INSERT INTO duelyst_cards VALUES (1,'Lyonar Kingdoms','Basic','Argeon Highmayne','Bloodborn Spell: Give a minion nearby your General +2 Attack.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (14,'Lyonar Kingdoms','Common','Silverguard Squire',NULL,1,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (9,'Lyonar Kingdoms','Basic','Windblade Adept','Zeal: Gains +2 Attack.',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (10,'Lyonar Kingdoms','Epic','Sunstone Templar','Whenever this attacks or counterattacks, it dispels that enemy.',2,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (11,'Lyonar Kingdoms','Basic','Silverguard Knight','Provoke
Zeal: Gains +2 Attack.',3,'Unit',NULL,1,5);
INSERT INTO duelyst_cards VALUES (12,'Lyonar Kingdoms','Rare','Arclyte Sentinel','Opening Gambit: Give ANY nearby minion +2 Attack, but -2 Health.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (13,'Lyonar Kingdoms','Rare','Second Sun','Zeal: Gains +8 Attack.',5,'Unit',NULL,0,8);
INSERT INTO duelyst_cards VALUES (8,'Lyonar Kingdoms','Basic','Lysian Brawler','Celerity',4,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (15,'Lyonar Kingdoms','Common','Lightchaser','Whenever ANY minion or General is healed, this minion gains +1/+1.',2,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (16,'Lyonar Kingdoms','Common','Suntide Maiden','Zeal: At the end of your turn, restore this minion to full Health.',4,'Unit',NULL,3,6);
INSERT INTO duelyst_cards VALUES (17,'Lyonar Kingdoms','Rare','Ironcliffe Guardian','Airdrop, Provoke',5,'Unit',NULL,3,10);
INSERT INTO duelyst_cards VALUES (18,'Lyonar Kingdoms','Legendary','Elyx Stormblade','Provoke
Your minions and General may move an additional space.',6,'Unit',NULL,7,7);
INSERT INTO duelyst_cards VALUES (20,'Lyonar Kingdoms','Legendary','Grandmaster Z''ir','When your General dies, Grandmaster Z''ir becomes your General.',7,'Unit',NULL,5,12);
INSERT INTO duelyst_cards VALUES (21,'Lyonar Kingdoms','Common','Azurite Lion','Celerity',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (22,'Lyonar Kingdoms','Epic','Sunriser','Whenever ANY minion or General is healed, deal 2 damage to all nearby enemies.',4,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (23,'Lyonar Kingdoms','Basic','Zir''An Sunforge','Bloodborn Spell: Restore 3 Health to any Minion.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (24,'Lyonar Kingdoms','Legendary','Sun Sister Sterope','Whenever ANY minion or General is healed, put a True Strike into your action bar.',4,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (25,'Lyonar Kingdoms','Rare','Fiz','Opening Gambit: Restore 2 Health to a minion or General.',2,'Unit','BATTLE PET',3,3);
INSERT INTO duelyst_cards VALUES (26,'Lyonar Kingdoms','Common','Slo','Provoke',0,'Unit','BATTLE PET',1,4);
INSERT INTO duelyst_cards VALUES (27,'Lyonar Kingdoms','Common','Sun Wisp','Opening Gambit: Draw a card.',2,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (28,'Lyonar Kingdoms','Rare','Radiant Dragoon','At the end of your turn, give a friendly minion +1 Health.',3,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (29,'Lyonar Kingdoms','Epic','Sunforge Lancer','Whenever ANY minion or General is healed, give your General +1 Attack.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (30,'Lyonar Kingdoms','Legendary','Solarius','Zeal: Draw 2 additional cards at the end of your turn.',6,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (101,'Songhai Empire','Basic','Kaleos Xaan','Bloodborn Spell: Teleport a friendly minion up to 2 spaces.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (108,'Songhai Empire','Common','Heartseeker','Ranged',1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (109,'Songhai Empire','Basic','Widowmaker','Ranged',3,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (110,'Songhai Empire','Basic','Kaido Assassin','Backstab: (1).',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (111,'Songhai Empire','Common','Scarlet Viper','Flying
Backstab: (4).',5,'Unit',NULL,2,5);
INSERT INTO duelyst_cards VALUES (112,'Songhai Empire','Rare','Gore Horn','Backstab: (2).
After this minion attacks, it gains +1/+1.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (113,'Songhai Empire','Token','Panddo','Cannot be attacked.',1,'Unit',NULL,0,2);
INSERT INTO duelyst_cards VALUES (114,'Songhai Empire','Common','Jade Monk','Whenever this minion takes damage, deal 1 damage to a random enemy minion.',3,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (115,'Songhai Empire','Basic','Chakri Avatar','Whenever you cast a spell, this minion gains +1/+1.',2,'Unit','ARCANYST',1,2);
INSERT INTO duelyst_cards VALUES (116,'Songhai Empire','Rare','Four Winds Magi','Whenever you cast a spell, deal 1 damage to enemy General and restore 1 Health to your General.',4,'Unit','ARCANYST',4,4);
INSERT INTO duelyst_cards VALUES (117,'Songhai Empire','Rare','Celestial Phantom','Whenever this damages an enemy minion, destroy that minion.',3,'Unit',NULL,1,5);
INSERT INTO duelyst_cards VALUES (118,'Songhai Empire','Legendary','Storm Kage','Whenever one of your spells deals damage, put a Kage Lightning in your action bar.',7,'Unit',NULL,5,10);
INSERT INTO duelyst_cards VALUES (119,'Songhai Empire','Epic','Hamon Bladeseeker','At the start of your turn, deal 2 damage to your General.',5,'Unit',NULL,8,8);
INSERT INTO duelyst_cards VALUES (120,'Songhai Empire','Common','Keshrai Fanblade','Opening Gambit: Next turn, opponent''s spells cost 2 more to cast.',4,'Unit',NULL,5,3);
INSERT INTO duelyst_cards VALUES (121,'Songhai Empire','Legendary','Tusk Boar','Rush
Return this minion to your action bar at the beginning of your turn.',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (122,'Songhai Empire','Epic','Lantern Fox','Whenever this minion takes damage, put a Phoenix Fire in your action bar.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (123,'Songhai Empire','Basic','Reva Eventide','Bloodborn Spell: Summon a Heartseeker nearby your General.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (124,'Songhai Empire','Legendary','Storm Sister Alkyone','Spells you cast that deal damage deal +1 damage.',4,'Unit',NULL,3,5);
INSERT INTO duelyst_cards VALUES (125,'Songhai Empire','Rare','Xho','Dying Wish: Put a random Songhai spell into your action bar. It costs 1 less.',2,'Unit','BATTLE PET',2,3);
INSERT INTO duelyst_cards VALUES (126,'Songhai Empire','Common','Ace','Ranged',1,'Unit','BATTLE PET',1,2);
INSERT INTO duelyst_cards VALUES (127,'Songhai Empire','Epic','Onyx Jaguar','Whenever a friendly minion is moved for any reason, give it +1/+1.',5,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (128,'Songhai Empire','Rare','Ki Beholder','Ranged
Opening Gambit: An enemy minion cannot move next turn.',3,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (129,'Songhai Empire','Common','Katara','Backstab: (3).',1,'Unit',NULL,1,3);
INSERT INTO duelyst_cards VALUES (130,'Songhai Empire','Epic','Battle Panddo','Whenever this minion takes damage, deal 1 damage to all enemies.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (131,'Songhai Empire','Legendary','Grandmaster Zendo','The enemy General moves and attacks as if they are a Battle Pet.',6,'Unit',NULL,4,6);
INSERT INTO duelyst_cards VALUES (201,'Vetruvian Imperium','Basic','Zirix Starstrider','Bloodborn Spell: Summon a 2/2 Iron Dervish on a random space nearby your General.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (208,'Vetruvian Imperium','Basic','Wind Shrike','Flying
Dying Wish: Draw a card.',4,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (209,'Vetruvian Imperium','Common','Starfire Scarab','Blast',5,'Unit',NULL,4,6);
INSERT INTO duelyst_cards VALUES (210,'Vetruvian Imperium','Rare','Sand Howler','Cannot be targeted by enemy spells.',3,'Unit','DERVISH',3,3);
INSERT INTO duelyst_cards VALUES (211,'Vetruvian Imperium','Common','Dunecaster','Opening Gambit: Give +2/+2 to a friendly Dervish. If it is a Wind Dervish, it no longer disappears.',2,'Unit','DERVISH',2,1);
INSERT INTO duelyst_cards VALUES (212,'Vetruvian Imperium','Common','Orb Weaver','Opening Gambit: Summon a copy of this minion on a nearby space.',3,'Unit','DERVISH',2,2);
INSERT INTO duelyst_cards VALUES (213,'Vetruvian Imperium','Basic','Pyromancer','Blast',2,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (214,'Vetruvian Imperium','Basic','Ethereal Obelysk','Summon Dervish',2,'Unit','STRUCTURE',0,6);
INSERT INTO duelyst_cards VALUES (215,'Vetruvian Imperium','Rare','Fireblaze Obelysk','Summon Dervish
Your Dervishes have +1 Attack.',3,'Unit','STRUCTURE',0,6);
INSERT INTO duelyst_cards VALUES (216,'Vetruvian Imperium','Common','Windstorm Obelysk','Summon Dervish
Your Dervishes have +1 Health.',3,'Unit','STRUCTURE',0,6);
INSERT INTO duelyst_cards VALUES (217,'Vetruvian Imperium','Token','Wind Dervish','Rush',2,'Unit','DERVISH',2,2);
INSERT INTO duelyst_cards VALUES (218,'Vetruvian Imperium','Rare','Imperial Mechanyst','Opening Gambit: Repair all of your artifacts to full durability.',3,'Unit',NULL,2,5);
INSERT INTO duelyst_cards VALUES (219,'Vetruvian Imperium','Epic','Mirage Master','Opening Gambit: This minion transforms into a copy of an enemy minion.',4,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (220,'Vetruvian Imperium','Legendary','Aymara Healer','Provoke
Dying Wish: Deal 5 damage to the enemy General. Restore 5 Health to your General.',6,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (221,'Vetruvian Imperium','Epic','Portal Guardian','Frenzy
Whenever you summon a minion, this minion gains +1 Attack.',3,'Unit',NULL,0,6);
INSERT INTO duelyst_cards VALUES (222,'Vetruvian Imperium','Legendary','Oserix','Flying
Dying Wish: Equip 2 random artifacts from your deck.',7,'Unit',NULL,8,6);
INSERT INTO duelyst_cards VALUES (223,'Vetruvian Imperium','Basic','Scioness Sajj','Bloodborn Spell: Your General deals double damage to minions this turn.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (224,'Vetruvian Imperium','Legendary','Sand Sister Saon','Your General has +1 Attack.',4,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (225,'Vetruvian Imperium','Token','Iron Dervish',NULL,1,'Unit','DERVISH',2,2);
INSERT INTO duelyst_cards VALUES (226,'Vetruvian Imperium','Common','Falcius','Opening Gambit: Your General gains +2 Attack and takes no damage this turn.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (227,'Vetruvian Imperium','Common','Rae','Dying Wish: Dispel the nearest enemy minion.',0,'Unit','BATTLE PET',1,1);
INSERT INTO duelyst_cards VALUES (228,'Vetruvian Imperium','Rare','Pax','Dying Wish: Summon two 2/2 Iron Dervishes nearby.',2,'Unit','BATTLE PET',2,1);
INSERT INTO duelyst_cards VALUES (229,'Vetruvian Imperium','Rare','Wind Slicer','Opening Gambit: Lower the cost of all Structure minions in your action bar by 1.',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (230,'Vetruvian Imperium','Token','Soulburn Obelysk','Summon Dervish
Destroy any minion that deals damage to this one.',3,'Unit','STRUCTURE',0,4);
INSERT INTO duelyst_cards VALUES (231,'Vetruvian Imperium','Epic','Allomancer','Dying Wish: Summon a random Obelysk on this space.',4,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (232,'Vetruvian Imperium','Legendary','Nimbus','Whenever this minion takes damage, summon a Soulburn Obelysk nearby.',5,'Unit',NULL,3,8);
INSERT INTO duelyst_cards VALUES (233,'Vetruvian Imperium','Epic','Pantheran','Costs 0 if you''ve cast all three Scion''s Wish spells this game.',6,'Unit',NULL,6,6);
INSERT INTO duelyst_cards VALUES (234,'Vetruvian Imperium','Token','Bloodfire Totem','At end of EACH turn, deal 1 damage to your General.',2,'Unit','STRUCTURE',0,4);
INSERT INTO duelyst_cards VALUES (301,'Abyssian Host','Basic','Lilithe Blightchaser','Bloodborn Spell: Summon 2 Wraithlings nearby your General.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (308,'Abyssian Host','Basic','Abyssal Crawler','At the end of your turn, turn a nearby space into Shadow Creep.',1,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (309,'Abyssian Host','Common','Abyssal Juggernaut','This minion has +1/+1 for each friendly Shadow Creep.',4,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (310,'Abyssian Host','Rare','Bloodmoon Priestess','Deathwatch: Summon a Wraithling on a random nearby space.',4,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (311,'Abyssian Host','Basic','Shadow Watcher','Deathwatch: Gains +1/+1.',3,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (312,'Abyssian Host','Common','Deepfire Devourer','Frenzy
Opening Gambit: Destroy friendly minions around it and gain +2/+2 for each minion.',4,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (313,'Abyssian Host','Common','Blood Siren','Opening Gambit: Give a nearby enemy minion or General -2 Attack this turn.',2,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (314,'Abyssian Host','Legendary','Vorpal Reaver','Celerity
Dying Wish: Summon six Wraithlings on random spaces.',6,'Unit',NULL,6,6);
INSERT INTO duelyst_cards VALUES (315,'Abyssian Host','Token','Wraithling',NULL,1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (316,'Abyssian Host','Rare','Darkspine Elemental','Double the damage dealt by friendly Shadow Creep.',2,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (317,'Abyssian Host','Basic','Gloomchaser','Opening Gambit: Summon a 1/1 Wraithling in a random nearby space.',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (318,'Abyssian Host','Rare','Shadowdancer','Deathwatch: Deal 1 damage to the enemy General, and restore 1 Health to your General.',5,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (319,'Abyssian Host','Common','Nightsorrow Assassin','Opening Gambit: Destroy a nearby enemy minion with 2 or less Attack.',3,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (320,'Abyssian Host','Legendary','Spectral Revenant','Rush
Whenever this damages an enemy minion, deal 4 damage to the enemy General.',7,'Unit',NULL,6,6);
INSERT INTO duelyst_cards VALUES (321,'Abyssian Host','Epic','Black Solus','Whenever you summon a Wraithling, this gains +2 Attack.',5,'Unit',NULL,4,7);
INSERT INTO duelyst_cards VALUES (322,'Abyssian Host','Epic','Reaper of the Nine Moons','Flying
Dying Wish: Summon a random minion from the opponent''s deck on this space.',5,'Unit',NULL,5,3);
INSERT INTO duelyst_cards VALUES (323,'Abyssian Host','Basic','Cassyva Soulreaper','Bloodborn Spell: Deal 1 damage to a minion. If it dies this turn, the space turns into Shadow Creep.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (324,'Abyssian Host','Legendary','Shadow Sister Kelaino','Whenever an enemy minion or General takes damage, restore 1 Health to your General.',4,'Unit',NULL,2,5);
INSERT INTO duelyst_cards VALUES (325,'Abyssian Host','Common','Night Fiend','Opening Gambit: Deal 2 damage to each enemy on or near friendly Shadow Creep.',5,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (326,'Abyssian Host','Common','Gor','Dying Wish: Summon a copy of this minion in a random unoccupied corner.',2,'Unit','BATTLE PET',1,1);
INSERT INTO duelyst_cards VALUES (327,'Abyssian Host','Rare','Ooz','Whenever this minion takes damage, turn a space occupied by an enemy into Shadow Creep.',2,'Unit','BATTLE PET',3,3);
INSERT INTO duelyst_cards VALUES (328,'Abyssian Host','Rare','Blood Baronette','Opening Gambit: Double a nearby Wraithling''s Attack and Health.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (329,'Abyssian Host','Epic','Arcane Devourer','Opening Gambit: The next minion you summon this turn costs 1.',7,'Unit',NULL,8,4);
INSERT INTO duelyst_cards VALUES (330,'Abyssian Host','Legendary','Klaxon','Provoke
Dying Wish: Turn six random spaces into Shadow Creep.',6,'Unit',NULL,6,6);
INSERT INTO duelyst_cards VALUES (401,'Magmar Aspects','Basic','Vaath the Immortal','Bloodborn Spell: Give your General +1 Attack.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (402,'Magmar Aspects','Basic','Earth Walker','Grow: +1/+1.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (403,'Magmar Aspects','Common','Grimrock','Grow: +2/+2.',4,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (404,'Magmar Aspects','Common','Kolossus','Grow: +4/+4.',5,'Unit',NULL,1,7);
INSERT INTO duelyst_cards VALUES (405,'Magmar Aspects','Epic','Makantor Warbeast','Frenzy, Rush',6,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (406,'Magmar Aspects','Basic','Phalanxar',NULL,2,'Unit',NULL,6,1);
INSERT INTO duelyst_cards VALUES (407,'Magmar Aspects','Rare','Elucidator','Rush
Opening Gambit: Deal 4 damage to your General.',4,'Unit',NULL,5,4);
INSERT INTO duelyst_cards VALUES (408,'Magmar Aspects','Rare','Unstable Leviathan','At the start of your turn, deal 4 damage to a random minion or General.',7,'Unit',NULL,11,11);
INSERT INTO duelyst_cards VALUES (409,'Magmar Aspects','Epic','Kujata','Your minions cost 1 less to summon and take 1 damage when summoned from your action bar.',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (410,'Magmar Aspects','Basic','Primordial Gazer','Opening Gambit: Give a nearby friendly minion +2/+2.',3,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (411,'Magmar Aspects','Token','Chrysalis Egg',NULL,0,'Unit',NULL,0,1);
INSERT INTO duelyst_cards VALUES (412,'Magmar Aspects','Common','Young Silithar','Rebirth',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (413,'Magmar Aspects','Common','Veteran Silithar','Rebirth',4,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (414,'Magmar Aspects','Legendary','Silithar Elder','Rebirth
At the end of your turn, summon a Silithar Elder Egg nearby.',7,'Unit',NULL,6,6);
INSERT INTO duelyst_cards VALUES (415,'Magmar Aspects','Rare','Spirit Harvester','At the end of your turn, deal 1 damage to ALL other minions.',5,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (416,'Magmar Aspects','Token','Magma',NULL,1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (417,'Magmar Aspects','Legendary','Vindicator','Whenever your opponent draws a card, this minion gains +2/+2.',3,'Unit',NULL,1,3);
INSERT INTO duelyst_cards VALUES (418,'Magmar Aspects','Basic','Starhorn the Seeker','Bloodborn Spell: Both players draw a card.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (419,'Magmar Aspects','Legendary','Earth Sister Taygete','Whenever this minion takes damage, deal that much damage to all nearby enemies.',4,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (420,'Magmar Aspects','Rare','Gro','Grow: +1/+1.',2,'Unit','BATTLE PET',2,4);
INSERT INTO duelyst_cards VALUES (421,'Magmar Aspects','Common','Rex','Rebirth',1,'Unit','BATTLE PET',3,1);
INSERT INTO duelyst_cards VALUES (422,'Magmar Aspects','Common','Wild Inceptor','Opening Gambit: Hatch a friendly Egg.',4,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (423,'Magmar Aspects','Epic','Moloki Huntress','Grow: +1/+1.
Friendly minions grow at the start of BOTH player''s turns.',3,'Unit',NULL,1,2);
INSERT INTO duelyst_cards VALUES (424,'Magmar Aspects','Legendary','Dreadnought','Rebirth
Egg minions you summon gain +2/+2.',6,'Unit',NULL,4,6);
INSERT INTO duelyst_cards VALUES (425,'Magmar Aspects','Rare','Mandrake','Costs 1 less for each minion summoned from ANY player''s action bar this game.',12,'Unit',NULL,6,6);
INSERT INTO duelyst_cards VALUES (426,'Magmar Aspects','Epic','Visionar','Whenever ANY player draws a card, this minion gains +1/+1.',5,'Unit',NULL,6,3);
INSERT INTO duelyst_cards VALUES (427,'Magmar Aspects','Token','Kin',NULL,3,'Unit','BATTLE PET',3,3);
INSERT INTO duelyst_cards VALUES (501,'Vanar Kindred','Basic','Faie Bloodwing','Bloodborn Spell: Deal 2 damage to all enemies in the enemy General''s Column.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (503,'Vanar Kindred','Basic','Fenrir Warmaster','Dying Wish: Summon a 3/2 Ghost Wolf on this space.',3,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (504,'Vanar Kindred','Token','Ghost Wolf',NULL,2,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (505,'Vanar Kindred','Basic','Crystal Cloaker','Infiltrate: Gains +2 Attack.',2,'Unit','VESPYR',2,3);
INSERT INTO duelyst_cards VALUES (506,'Vanar Kindred','Common','Crystal Wisp','Dying Wish: Permanently gain 1 mana crystal.',2,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (507,'Vanar Kindred','Epic','Frosthorn Rhyno','Infiltrate: Gains +1 Attack and Celerity.',5,'Unit',NULL,6,5);
INSERT INTO duelyst_cards VALUES (508,'Vanar Kindred','Epic','Draugar Lord','Dying Wish: Summon a 4/8 Ice Drake on this space.',6,'Unit','VESPYR',4,8);
INSERT INTO duelyst_cards VALUES (509,'Vanar Kindred','Token','Ice Drake',NULL,4,'Unit',NULL,4,8);
INSERT INTO duelyst_cards VALUES (510,'Vanar Kindred','Rare','Snow Chaser','Infiltrate: When this minion dies, return it to your action bar.',1,'Unit','VESPYR',2,1);
INSERT INTO duelyst_cards VALUES (511,'Vanar Kindred','Common','Wolfraven','Flying
Infiltrate: Gains +3 Attack.',3,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (512,'Vanar Kindred','Common','Borean Bear','Whenever you summon a Vespyr minion, this minion gains +1 Attack.',2,'Unit','VESPYR',1,3);
INSERT INTO duelyst_cards VALUES (513,'Vanar Kindred','Rare','Razorback','Opening Gambit: Give all friendly minions +2 Attack this turn.',4,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (514,'Vanar Kindred','Legendary','Ancient Grove','Provoke
Opening Gambit: Your minions gain "Dying Wish: Summon a 1/1 Treant with Provoke".',7,'Unit','VESPYR',7,7);
INSERT INTO duelyst_cards VALUES (515,'Vanar Kindred','Legendary','Voice of the Wind','Whenever you summon a minion from your action bar, summon a 2/2 Vespyr Winter Maerid nearby.',4,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (516,'Vanar Kindred','Token','Treant','Provoke',1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (517,'Vanar Kindred','Common','Hearth-Sister','Opening Gambit: Switch positions with ANY other minion.',2,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (518,'Vanar Kindred','Token','Winter Maerid',NULL,1,'Unit','VESPYR',2,2);
INSERT INTO duelyst_cards VALUES (519,'Vanar Kindred','Rare','Glacial Elemental','Whenever you summon a Vespyr minion, deal 2 damage to a random enemy minion.',3,'Unit','VESPYR',2,3);
INSERT INTO duelyst_cards VALUES (520,'Vanar Kindred','Token','Fox Ravager',NULL,2,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (521,'Vanar Kindred','Token','Whyte Drake','Flying',4,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (522,'Vanar Kindred','Token','Seismic Elemental',NULL,4,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (523,'Vanar Kindred','Token','Gravity Well','Provoke, Wall',1,'Unit',NULL,0,1);
INSERT INTO duelyst_cards VALUES (524,'Vanar Kindred','Token','Blazing Spines','Wall',1,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (525,'Vanar Kindred','Token','Bonechill Barrier','Wall
Minions next to this minion that attack it are Stunned.',1,'Unit','VESPYR',0,2);
INSERT INTO duelyst_cards VALUES (526,'Vanar Kindred','Basic','Arctic Displacer','Airdrop',5,'Unit','VESPYR',10,4);
INSERT INTO duelyst_cards VALUES (527,'Vanar Kindred','Basic','Kara Winterblade','Bloodborn Spell: Give each minion in your hand +1/+1.',0,'Unit',NULL,2,25);
INSERT INTO duelyst_cards VALUES (528,'Vanar Kindred','Legendary','Wind Sister Maia','Whenever you summon a minion with Infiltrate, give it +1/+1.',4,'Unit',NULL,4,5);
INSERT INTO duelyst_cards VALUES (529,'Vanar Kindred','Common','Snow Rippler','Infiltrate: Whenever this minion damages a General, put a random Battle Pet into your action bar.',3,'Unit','VESPYR',3,4);
INSERT INTO duelyst_cards VALUES (530,'Vanar Kindred','Common','Icy','Opening Gambit: Stun a nearby enemy minion or General.',2,'Unit','BATTLE PET',2,3);
INSERT INTO duelyst_cards VALUES (531,'Vanar Kindred','Rare','Bur','When this minion survives damage, transform it into a different Battle Pet.',2,'Unit','BATTLE PET',3,3);
INSERT INTO duelyst_cards VALUES (532,'Vanar Kindred','Rare','Huldra','Opening Gambit: Give a friendly Vespyr minion Celerity.',5,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (533,'Vanar Kindred','Epic','Iceblade Dryad','Opening Gambit: Give a friendly Vespyr minion +1/+1 and Flying.',3,'Unit','VESPYR',3,3);
INSERT INTO duelyst_cards VALUES (534,'Vanar Kindred','Legendary','Frostiva','Forcefield
Whenever this minion attacks or is attacked, summon a 3/3 Vespyr Night Howler nearby.',5,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (535,'Vanar Kindred','Token','Night Howler',NULL,2,'Unit','VESPYR',3,3);
INSERT INTO duelyst_cards VALUES (10001,'Neutral','Basic','Dragonlark','Flying',1,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (10009,'Neutral','Rare','Silvertongue Corsair','Takes no damage from Generals.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10012,'Neutral','Basic','Saberspine Tiger','Rush',3,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (10013,'Neutral','Common','Blaze Hound','Opening Gambit: Both players draw a card.',3,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (10014,'Neutral','Common','Sand Burrower','When this minion survives damage, it returns to your action bar.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (10016,'Neutral','Basic','Repulsor Beast','Opening Gambit: Push a nearby enemy minion to any space.',3,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (10017,'Neutral','Basic','Fire Spitter','Ranged',4,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (10018,'Neutral','Basic','Komodo Charger',NULL,1,'Unit',NULL,1,3);
INSERT INTO duelyst_cards VALUES (10019,'Neutral','Basic','Planar Scout','Airdrop',1,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (10020,'Neutral','Basic','Ephemeral Shroud','Opening Gambit: Dispel 1 nearby space.',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (10021,'Neutral','Basic','Vale Hunter','Ranged',2,'Unit',NULL,1,2);
INSERT INTO duelyst_cards VALUES (10022,'Neutral','Epic','Twilight Sorcerer','Opening Gambit: Put a copy of a random spell you cast this game into your action bar.',5,'Unit',NULL,3,6);
INSERT INTO duelyst_cards VALUES (10204,'Neutral','Basic','Brightmoss Golem',NULL,5,'Unit','GOLEM',4,9);
INSERT INTO duelyst_cards VALUES (10205,'Neutral','Basic','Bloodshard Golem',NULL,3,'Unit','GOLEM',4,3);
INSERT INTO duelyst_cards VALUES (10206,'Neutral','Basic','Dragonbone Golem',NULL,7,'Unit','GOLEM',10,10);
INSERT INTO duelyst_cards VALUES (10207,'Neutral','Basic','Stormmetal Golem',NULL,6,'Unit','GOLEM',8,8);
INSERT INTO duelyst_cards VALUES (10301,'Neutral','Common','Sun Seer','Whenever this minion deals damage, restore 2 Health to your General.',3,'Unit','ARCANYST',2,4);
INSERT INTO duelyst_cards VALUES (10302,'Neutral','Rare','Manaforger','The first non-Bloodborn spell you cast each turn costs 1 less.',2,'Unit','ARCANYST',1,3);
INSERT INTO duelyst_cards VALUES (10303,'Neutral','Rare','Prismatic Illusionist','Whenever you cast a spell, summon a 2/1 Illusion on a random nearby space.',3,'Unit','ARCANYST',2,3);
INSERT INTO duelyst_cards VALUES (10304,'Neutral','Epic','Alcuin Loremaster','Opening Gambit: Put a copy of the most recently cast spell into your action bar.',3,'Unit','ARCANYST',3,1);
INSERT INTO duelyst_cards VALUES (10305,'Neutral','Rare','Owlbeast Sage','Whenever you cast a spell, your Arcanyst minions gain +2 Health.',4,'Unit','ARCANYST',4,4);
INSERT INTO duelyst_cards VALUES (10306,'Neutral','Rare','Lightbender','Opening Gambit: Dispel ALL spaces around it.',4,'Unit','ARCANYST',3,3);
INSERT INTO duelyst_cards VALUES (10307,'Neutral','Common','Serpenti','Frenzy',6,'Unit',NULL,7,4);
INSERT INTO duelyst_cards VALUES (10309,'Neutral','Token','Illusion',NULL,1,'Unit','ARCANYST',2,1);
INSERT INTO duelyst_cards VALUES (19001,'Neutral','Token','MECHAZ0R!','Airdrop, Frenzy, Ranged
Cannot be targeted by ANY spells.',7,'Unit','MECH',8,8);
INSERT INTO duelyst_cards VALUES (19002,'Neutral','Common','Helm of MECHAZ0R','Opening Gambit: Progresses MECHAZ0R build by +20%.',1,'Unit','MECH',2,2);
INSERT INTO duelyst_cards VALUES (19003,'Neutral','Common','Wings of MECHAZ0R','Airdrop
Opening Gambit: Progresses MECHAZ0R build by +20%.',2,'Unit','MECH',1,4);
INSERT INTO duelyst_cards VALUES (19004,'Neutral','Rare','Cannon of MECHAZ0R','Ranged
Opening Gambit: Progresses MECHAZ0R build by +20%.',3,'Unit','MECH',2,2);
INSERT INTO duelyst_cards VALUES (19005,'Neutral','Rare','Sword of MECHAZ0R','Frenzy
Opening Gambit: Progresses MECHAZ0R build by +20%.',3,'Unit','MECH',3,3);
INSERT INTO duelyst_cards VALUES (19006,'Neutral','Epic','Chassis of MECHAZ0R','Opening Gambit: Progresses MECHAZ0R build by +20%.
Cannot be targeted by ANY spells.',4,'Unit','MECH',5,4);
INSERT INTO duelyst_cards VALUES (19010,'Neutral','Common','Wind Stopper','Ranged attackers must attack this minion first.',3,'Unit',NULL,1,7);
INSERT INTO duelyst_cards VALUES (19025,'Neutral','Common','Swamp Entangler','Provoke',1,'Unit',NULL,0,3);
INSERT INTO duelyst_cards VALUES (19026,'Neutral','Basic','Rock Pulverizer','Provoke',2,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (19027,'Neutral','Basic','Primus Shieldmaster','Provoke',4,'Unit',NULL,3,6);
INSERT INTO duelyst_cards VALUES (19028,'Neutral','Common','Fireblazer','Provoke',5,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (19029,'Neutral','Common','Bluetip Scorpion','Deals double damage to minions.',2,'Unit',NULL,3,1);
INSERT INTO duelyst_cards VALUES (19030,'Neutral','Rare','Crimson Oculus','Whenever opponent summons a minion, this minion gains +1/+1.',3,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (19031,'Neutral','Basic','Thorn Needler',NULL,4,'Unit',NULL,6,4);
INSERT INTO duelyst_cards VALUES (19032,'Neutral','Common','Rogue Warden','Ranged',5,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (19033,'Neutral','Basic','Putrid Dreadflayer','Flying',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (19034,'Neutral','Basic','Young Flamewing','Flying',4,'Unit',NULL,5,4);
INSERT INTO duelyst_cards VALUES (19035,'Neutral','Common','Storm Aratha','Flying',6,'Unit',NULL,6,5);
INSERT INTO duelyst_cards VALUES (19036,'Neutral','Common','Whistling Blade','Provoke',7,'Unit',NULL,2,15);
INSERT INTO duelyst_cards VALUES (19037,'Neutral','Common','Primus Fist','Opening Gambit: Give a nearby friendly minion +2 Attack this turn.',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (19038,'Neutral','Rare','Golem Metallurgist','The first Golem you summon each turn costs 1 less.',2,'Unit','GOLEM',2,3);
INSERT INTO duelyst_cards VALUES (19039,'Neutral','Legendary','Golem Vanquisher','Provoke
Your other Golem minions have Provoke.',3,'Unit','GOLEM',2,4);
INSERT INTO duelyst_cards VALUES (19040,'Neutral','Basic','Piercing Mantis','Frenzy',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (19042,'Neutral','Common','Frostbone Naga','Opening Gambit: Deal 2 damage to ALL minions and Generals around it.',4,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (19043,'Neutral','Legendary','Archon Spellbinder','Your opponent''s non-Bloodborn spells cost 1 more to cast.',6,'Unit','ARCANYST',7,7);
INSERT INTO duelyst_cards VALUES (19044,'Neutral','Common','Silhouette Tracer','Opening Gambit: Teleport your General up to 3 spaces.',4,'Unit',NULL,2,6);
INSERT INTO duelyst_cards VALUES (19045,'Neutral','Legendary','Sarlac the Eternal','Dying Wish: Re-summon this minion on a random space.',3,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (19046,'Neutral','Legendary','Dark Nemesis','At the start of your turn, deal 4 damage to the enemy General and this minion gains +4 Attack.',7,'Unit',NULL,4,10);
INSERT INTO duelyst_cards VALUES (19047,'Neutral','Legendary','Mirkblood Devourer','Friendly minions summoned nearby this minion gain +1/+1.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (19048,'Neutral','Basic','Skyrock Golem',NULL,2,'Unit','GOLEM',3,2);
INSERT INTO duelyst_cards VALUES (19049,'Neutral','Rare','Sojourner','Whenever this minion deals damage, draw a card.',3,'Unit',NULL,1,5);
INSERT INTO duelyst_cards VALUES (19050,'Neutral','Rare','Azure Horn Shaman','Dying Wish: Give +4 Health to friendly minions around it.',2,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (19051,'Neutral','Rare','Flameblood Warlock','Opening Gambit: Deal 3 damage to BOTH Generals.',2,'Unit',NULL,3,1);
INSERT INTO duelyst_cards VALUES (19052,'Neutral','Basic','Bloodtear Alchemist','Opening Gambit: Deal 1 damage to an enemy minion or General.',1,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (10953,'Neutral','Rare','Crossbones','Opening Gambit: Destroy an enemy minion with Ranged.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10954,'Neutral','Epic','Sworn Avenger','Ranged
Whenever your General takes damage, this minion gains +1 Attack.',3,'Unit',NULL,1,3);
INSERT INTO duelyst_cards VALUES (10955,'Neutral','Epic','Sworn Defender','Whenever your General takes damage, restore this minion to full Health.',5,'Unit',NULL,4,7);
INSERT INTO duelyst_cards VALUES (10956,'Neutral','Legendary','Red Synja','Whenever your General takes damage, deal 7 damage to a random nearby enemy minion.',7,'Unit',NULL,7,7);
INSERT INTO duelyst_cards VALUES (10957,'Neutral','Common','Rust Crawler','Opening Gambit: Destroy a random enemy artifact.',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (10958,'Neutral','Common','Dagger Kiri','Celerity',5,'Unit',NULL,2,8);
INSERT INTO duelyst_cards VALUES (10959,'Neutral','Common','Dancing Blades','Opening Gambit: Deal 3 damage to ANY minion in front of this.',5,'Unit',NULL,4,6);
INSERT INTO duelyst_cards VALUES (10960,'Neutral','Epic','Venom Toth','Whenever your opponent summons a minion, deal 1 damage to the enemy General.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10961,'Neutral','Epic','Artifact Hunter','Opening Gambit: Draw a random artifact from your deck.',4,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10962,'Neutral','Epic','Chaos Elemental','Whenever this minion takes damage, it randomly teleports.',3,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (10963,'Neutral','Legendary','Jax Truesight','Ranged
Opening Gambit: Summon a 1/1 Ranged Mini-Jax in each unoccupied corner.',6,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (10965,'Neutral','Rare','Mindwarper','Opening Gambit: Gain a copy of a random spell from your opponent''s action bar.',4,'Unit','ARCANYST',4,3);
INSERT INTO duelyst_cards VALUES (10966,'Neutral','Legendary','Pandora','At the end of your turn, summon a 3/3 Spirit Wolf with a random ability on a nearby space.',7,'Unit',NULL,3,10);
INSERT INTO duelyst_cards VALUES (10967,'Neutral','Token','Serenity','Flying',2,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10968,'Neutral','Token','Rage','Frenzy',2,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10969,'Neutral','Token','Wrath','Celerity',2,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10970,'Neutral','Token','Envy','Ranged',2,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10971,'Neutral','Token','Fear','Provoke',2,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10972,'Neutral','Token','Mini-Jax','Ranged',1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (10973,'Neutral','Epic','Lux Ignis','Ranged
At the end of your turn, restore 2 Health to all nearby friendly minions.',5,'Unit',NULL,2,5);
INSERT INTO duelyst_cards VALUES (10974,'Neutral','Epic','Syvrel the Exile','Ranged
Minions damaged by Syvrel are pulled in front of him.',3,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (10975,'Neutral','Legendary','Spelljammer','Each player draws an additional card at the end of their turns.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (10976,'Neutral','Epic','Dioltas','Dying Wish: Summon a 0/10 Tombstone minion with Provoke nearby your General.',4,'Unit',NULL,5,3);
INSERT INTO duelyst_cards VALUES (10977,'Neutral','Token','Tombstone','Provoke',3,'Unit',NULL,0,10);
INSERT INTO duelyst_cards VALUES (10978,'Neutral','Basic','Hailstone Golem',NULL,4,'Unit','GOLEM',4,6);
INSERT INTO duelyst_cards VALUES (10979,'Neutral','Common','Maw','Opening Gambit: Deal 2 damage to a nearby enemy minion.',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (10980,'Neutral','Common','Deathblighter','Opening Gambit: Deal 3 damage to all enemy minions around it.',6,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (10981,'Neutral','Basic','Healing Mystic','Opening Gambit: Restore 2 Health to a minion or General.',2,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (10982,'Neutral','Common','Void Hunter','Dying Wish: Draw a card.',3,'Unit',NULL,4,2);
INSERT INTO duelyst_cards VALUES (10983,'Neutral','Common','Ash Mephyt','Opening Gambit: Summon two copies of this minion on random spaces.',5,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (10984,'Neutral','Common','First Sword of Akrane','Your other minions have +1 Attack.',6,'Unit',NULL,7,7);
INSERT INTO duelyst_cards VALUES (10985,'Neutral','Common','The High Hand','Opening Gambit: Gains +1/+1 for each card in your opponent''s action bar.',5,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (10986,'Neutral','Legendary','Eclipse','Whenever this minion takes damage, it deals that much damage to the enemy General.',6,'Unit','ARCANYST',3,7);
INSERT INTO duelyst_cards VALUES (10987,'Neutral','Legendary','Lady Locke','Provoke
Opening Gambit: Other minions you summon this turn gain +1/+1 and Provoke.',3,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (10988,'Neutral','Epic','Moebius','At the start of your turn, restore this minion to full Health and switch its Attack and Health.',4,'Unit','ARCANYST',3,5);
INSERT INTO duelyst_cards VALUES (10989,'Neutral','Epic','Captain Hank Hart','Ranged
Whenever this deals damage, restore that much Health to it.',4,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (10990,'Neutral','Legendary','Rook','At the end of your turn, this minion gains a random Faction ability.',7,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (10991,'Neutral','Epic','Purgatos, The Realmkeeper','Whenever this minion deals damage, either deal 3 damage to the enemy General OR restore 3 Health to your General.',4,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (10992,'Neutral','Common','Songweaver','Opening Gambit: Give a nearby friendly minion +1/+1.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (10993,'Neutral','Epic','Aethermaster','You may replace an additional card each turn.',2,'Unit','ARCANYST',1,3);
INSERT INTO duelyst_cards VALUES (10994,'Neutral','Legendary','Zen''Rui, The BlightSpawned','Opening Gambit: Take control of a nearby enemy minion with 2 or less Attack.',5,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (10995,'Neutral','Rare','Emerald Rejuvenator','Opening Gambit: Restore 4 Health to BOTH Generals.',4,'Unit',NULL,4,4);
INSERT INTO duelyst_cards VALUES (10996,'Neutral','Legendary','Zurael, the Lifegiver','Opening Gambit: Summon all non-token friendly minions destroyed on your opponent''s last turn on random spaces.',7,'Unit',NULL,4,7);
INSERT INTO duelyst_cards VALUES (10997,'Neutral','Legendary','Paddo','Airdrop
Opening Gambit: Push ALL nearby minions and Generals to random spaces on the battlefield.',7,'Unit',NULL,12,6);
INSERT INTO duelyst_cards VALUES (10998,'Neutral','Token','Fog','Dying Wish: Put a random Battle Pet into your action bar.',1,'Unit','BATTLE PET',1,1);
INSERT INTO duelyst_cards VALUES (10999,'Neutral','Token','Ubo','Flying',1,'Unit','BATTLE PET',2,3);
INSERT INTO duelyst_cards VALUES (11001,'Neutral','Common','Amu',NULL,2,'Unit','BATTLE PET',3,3);
INSERT INTO duelyst_cards VALUES (11003,'Neutral','Token','Sai',NULL,1,'Unit','BATTLE PET',3,3);
INSERT INTO duelyst_cards VALUES (11004,'Neutral','Common','Yun',NULL,3,'Unit','BATTLE PET',5,4);
INSERT INTO duelyst_cards VALUES (11006,'Neutral','Legendary','Black Locust','Flying
After this minion moves, summon a Black Locust nearby.',4,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11007,'Neutral','Rare','Wind Runner','After this minion moves, give all friendly minions around it +1/+1.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (11008,'Neutral','Epic','Mogwai','After this moves, draw a card.',3,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (11009,'Neutral','Common','Ghost Lynx','Opening Gambit: Teleport a nearby minion to a random space.',2,'Unit',NULL,2,1);
INSERT INTO duelyst_cards VALUES (11010,'Neutral','Epic','Grailmaster','Whenever you summon a minion, this minion gains a random keyword ability.',7,'Unit',NULL,6,6);
INSERT INTO duelyst_cards VALUES (11011,'Neutral','Rare','Firestarter','Whenever you cast a spell, summon a 1/1 Spellspark with Rush on a random nearby space.',5,'Unit','ARCANYST',3,5);
INSERT INTO duelyst_cards VALUES (11012,'Neutral','Token','Spellspark','Rush',1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (11013,'Neutral','Legendary','Khymera','Whenever this minion takes damage, summon a random token minion nearby.',8,'Unit',NULL,5,12);
INSERT INTO duelyst_cards VALUES (11014,'Neutral','Common','Jaxi','Dying Wish: Summon a 1/1 Ranged Mini-Jax in a random unoccupied corner.',2,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (11015,'Neutral','Common','Sun Elemental','Opening Gambit: Give two random friendly minions +2 Health.',4,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (11016,'Neutral','Rare','Prophet of the White Palm','Opening Gambit: Prevent ALL spell damage until your next turn.',1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (11017,'Neutral','Epic','Araki Headhunter','Whenever you summon a minion with Opening Gambit from your action bar, gain +2 Attack.',2,'Unit',NULL,1,3);
INSERT INTO duelyst_cards VALUES (11018,'Neutral','Legendary','Keeper of the Vale','Opening Gambit: Summon a random non-token friendly minion destroyed this game nearby.',5,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (11019,'Neutral','Rare','White Widow','Whenever you replace a card, deal 2 damage to a random enemy minion or General.',4,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (11020,'Neutral','Common','Wings of Paradise','Flying
Whenever you replace a card, this minion gains +2 Attack this turn.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (11021,'Neutral','Legendary','Astral Crusader','Whenever you replace this card, it costs 1 less and gains +1/+1.',7,'Unit',NULL,7,6);
INSERT INTO duelyst_cards VALUES (11022,'Neutral','Epic','Dreamgazer','When you replace this card, summon it nearby.  Your General takes 2 damage.',1,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (11023,'Neutral','Epic','Bonereaper','Provoke
At the end of your turn, deal 2 damage to all nearby enemy minions.',6,'Unit',NULL,2,9);
INSERT INTO duelyst_cards VALUES (11024,'Neutral','Legendary','Hollow Grovekeeper','Opening Gambit: Destroy ANY nearby minion with Provoke or Frenzy. If you do, this minion gains Provoke and Frenzy.',5,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (11025,'Neutral','Rare','Tethermancer','Provoke
Dispel any minion that deals damage to this one.',4,'Unit',NULL,1,6);
INSERT INTO duelyst_cards VALUES (11026,'Neutral','Common','War Talon','Frenzy, Provoke',7,'Unit',NULL,4,9);
INSERT INTO duelyst_cards VALUES (11027,'Neutral','Common','Sapphire Seer','Forcefield',3,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11028,'Neutral','Rare','Sunsteel Defender','Forcefield',4,'Unit',NULL,4,3);
INSERT INTO duelyst_cards VALUES (11029,'Neutral','Legendary','E''Xun','Forcefield
Whenever this minion attacks or is attacked, draw a card.',7,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (11030,'Neutral','Epic','Sunset Paragon','Opening Gambit: ALL nearby minions deal damage to themselves equal to their Attack.',5,'Unit',NULL,3,2);
INSERT INTO duelyst_cards VALUES (11031,'Neutral','Basic','Necroseer','Dying Wish: Draw a card.',5,'Unit',NULL,5,4);
INSERT INTO duelyst_cards VALUES (11032,'Neutral','Basic','Bloodletter','Deals double damage to Generals.',6,'Unit',NULL,4,6);
INSERT INTO duelyst_cards VALUES (11033,'Neutral','Common','Arrow Whistler','Ranged
Your other minions with Ranged have +1 Attack.',4,'Unit','WARMASTER',2,4);
INSERT INTO duelyst_cards VALUES (11034,'Neutral','Epic','Golden Justicar','Provoke
Your other minions with Provoke can move two additional spaces.',5,'Unit','WARMASTER',4,6);
INSERT INTO duelyst_cards VALUES (11035,'Neutral','Rare','Skywing','Flying
Your other minions with Flying cost 1 less.',3,'Unit','WARMASTER',3,3);
INSERT INTO duelyst_cards VALUES (11036,'Neutral','Legendary','Unseven','Dying Wish: Summon a minion with Dying Wish from your action bar.',4,'Unit','WARMASTER',2,4);
INSERT INTO duelyst_cards VALUES (11037,'Neutral','Common','Diamond Golem',NULL,6,'Unit','GOLEM',4,11);
INSERT INTO duelyst_cards VALUES (11038,'Neutral','Epic','Bastion','At the end of your turn, give other friendly minions +1 Health.',3,'Unit','STRUCTURE',0,5);
INSERT INTO duelyst_cards VALUES (11039,'Neutral','Rare','Abjudicator','Opening Gambit: Lower the cost of all spells in your action bar by 1.',3,'Unit','ARCANYST',3,1);
INSERT INTO duelyst_cards VALUES (11040,'Neutral','Legendary','Alter Rexx','Whenever you summon MECHAZ0R, put a MECHAZ0R in your action bar.',5,'Unit','MECH',4,4);
INSERT INTO duelyst_cards VALUES (11041,'Neutral','Legendary','Sworn Sister L''Kian','Opening Gambit: Add 2 random cards from your Faction to your action bar.',4,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (11042,'Neutral','Rare','Chakkram','Costs 2 less if your General took damage on your opponent''s last turn.',5,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (11043,'Neutral','Common','Blistering Skorn','Opening Gambit: Deal 1 damage to ALL minions and Generals (including itself).',3,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (11044,'Neutral','Epic','Blood Taura','Provoke
This minion''s cost is equal to your General''s Health.',25,'Unit',NULL,12,12);
INSERT INTO duelyst_cards VALUES (11045,'Neutral','Legendary','Ruby Rifter','Whenever your General takes damage, give this minion +2 Attack and draw a card.',6,'Unit',NULL,4,6);
INSERT INTO duelyst_cards VALUES (11046,'Neutral','Common','Shiro Puppydragon','At the end of your turn, give each nearby friendly minion +1 Attack.',2,'Unit',NULL,1,4);
INSERT INTO duelyst_cards VALUES (11047,'Neutral','Epic','The Scientist','Whenever you cast a spell that targets a friendly minion, draw a card.',6,'Unit','ARCANYST',6,6);
INSERT INTO duelyst_cards VALUES (11048,'Neutral','Legendary','Envybaer','Whenever this minion damages an enemy, teleport that enemy to a random unoccupied corner.',5,'Unit',NULL,3,7);
INSERT INTO duelyst_cards VALUES (11049,'Neutral','Rare','Grincher','Opening Gambit: Put a random artifact into your action bar. It costs 2 less.',5,'Unit',NULL,5,4);
INSERT INTO duelyst_cards VALUES (11050,'Neutral','Token','Rok','Can''t move.',1,'Unit','BATTLE PET',4,4);
INSERT INTO duelyst_cards VALUES (11051,'Neutral','Rare','Ion','Ranged
Deals double damage to Generals.',3,'Unit','BATTLE PET',2,3);
INSERT INTO duelyst_cards VALUES (11052,'Neutral','Legendary','Hydrax','Whenever a friendly Battle Pet dies, draw a card.',3,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (11053,'Neutral','Common','Koi','Takes no damage from Generals.',1,'Unit','BATTLE PET',3,1);
INSERT INTO duelyst_cards VALUES (11054,'Neutral','Rare','Beastmaster','Frenzy, Celerity',5,'Unit',NULL,2,5);
INSERT INTO duelyst_cards VALUES (11055,'Neutral','Common','Silverbeak',NULL,6,'Unit',NULL,6,9);
INSERT INTO duelyst_cards VALUES (11056,'Neutral','Common','Golden Mantella','Opening Gambit: Put a random Battle Pet into your action bar.',3,'Unit',NULL,4,2);
INSERT INTO duelyst_cards VALUES (11057,'Neutral','Common','Gnasher','Dying Wish: This minion deals 3 damage to all enemies around it.',4,'Unit',NULL,3,3);
INSERT INTO duelyst_cards VALUES (11058,'Neutral','Epic','Soboro','Whenever this damages a neutral minion, destroy that minion.',3,'Unit',NULL,2,4);
INSERT INTO duelyst_cards VALUES (11059,'Neutral','Legendary','Zukong','You control your Battle Pets.',3,'Unit',NULL,3,4);
INSERT INTO duelyst_cards VALUES (11060,'Neutral','Legendary','Rawr','Whenever this minion takes damage, summon a random Battle Pet nearby.',5,'Unit','BATTLE PET',3,7);
INSERT INTO duelyst_cards VALUES (11061,'Neutral','Epic','Z0r','Dying Wish: Put a random MECH minion into your action bar.',2,'Unit','BATTLE PET',2,1);
INSERT INTO duelyst_cards VALUES (11063,'Neutral','Epic','Calculator','Opening Gambit: Gain the combined Attack and Health of all Battle Pets in your action bar.',5,'Unit',NULL,1,1);
INSERT INTO duelyst_cards VALUES (11064,'Neutral','Legendary','Inquisitor Kron','Provoke
Whenever you replace a card, summon a 2/2 Prisoner with a random ability nearby.',5,'Unit',NULL,4,6);
INSERT INTO duelyst_cards VALUES (11065,'Neutral','Token','Dispirited Prisoner','Frenzy',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11066,'Neutral','Rare','Sol','Opening Gambit: Activate a friendly Battle Pet.',2,'Unit','BATTLE PET',1,1);
INSERT INTO duelyst_cards VALUES (11067,'Neutral','Token','Dex','Celerity',1,'Unit','BATTLE PET',2,5);
INSERT INTO duelyst_cards VALUES (11069,'Neutral','Token','Broken Captive','Rush',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11070,'Neutral','Token','Ruined Slave','Provoke',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11071,'Neutral','Token','Dejected Thrall','Forcefield',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11072,'Neutral','Token','Drudging Servant','Flying',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11073,'Neutral','Token','Toiling Vassal','Ranged',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11074,'Neutral','Token','Oni','Forcefield',1,'Unit','BATTLE PET',1,1);
INSERT INTO duelyst_cards VALUES (11075,'Neutral','Common','Wood-Wen','Provoke
Opening Gambit: Give a nearby friendly minion Provoke.',2,'Unit',NULL,2,2);
INSERT INTO duelyst_cards VALUES (11076,'Neutral','Rare','Elkowl','Opening Gambit: Gain two random abilities.',3,'Unit',NULL,2,3);
INSERT INTO duelyst_cards VALUES (11077,'Neutral','Epic','Grove Lion','While this minion is on the battlefield, your General has Forcefield.',6,'Unit',NULL,5,5);
INSERT INTO duelyst_cards VALUES (11078,'Neutral','Legendary','Sphynx','Opening Gambit: Put a Riddle in your opponent''s action bar.',4,'Unit',NULL,5,4);
INSERT INTO duelyst_cards VALUES (20028,'Vetruvian Imperium','Rare','Dominate Will','Take control of an enemy minion nearby your General.',7,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20043,'Lyonar Kingdoms','Common','Sundrop Elixir','Restore 5 Health to a minion or General.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20044,'Lyonar Kingdoms','Basic','Tempest','Deal 2 damage to ALL minions and Generals.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20045,'Lyonar Kingdoms','Common','Auryn Nexus','Give a friendly minion +3 Health.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20046,'Lyonar Kingdoms','Rare','Lasting Judgement','Give ANY minion +3 Attack, but -3 Health.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20047,'Lyonar Kingdoms','Basic','War Surge','Give all friendly minions +1/+1.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20049,'Abyssian Host','Basic','Daemonic Lure','Deal 1 damage to an enemy minion and teleport it to any space on the battlefield.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20050,'Abyssian Host','Legendary','Nether Summoning','Summon 2 non-token minions destroyed since the end of your last turn nearby.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20051,'Abyssian Host','Basic','Shadow Nova','Turn a 2x2 area into Shadow Creep.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20052,'Abyssian Host','Common','Void Pulse','Deal 2 damage to enemy General. Restore 3 Health to your General.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20057,'Abyssian Host','Rare','Ritual Banishing','Destroy a friendly minion to destroy an enemy minion.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20059,'Abyssian Host','Rare','Darkfire Sacrifice','Destroy a friendly minion. Your next minion costs 2 less.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20061,'Abyssian Host','Basic','Dark Transformation','Destroy an enemy minion and summon a 1/1 Wraithling on that space.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20062,'Lyonar Kingdoms','Rare','Lionheart Blessing','Give a friendly minion, "Zeal: Whenever this minion deals damage, draw a card."',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20063,'Magmar Aspects','Epic','Fractal Replication','Summon two copies of a friendly minion nearby that minion.',6,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20064,'Lyonar Kingdoms','Common','Sun Bloom','Dispel a 2x2 area on the battlefield.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20065,'Abyssian Host','Common','Shadow Reflection','Give a friendly minion +5 Attack.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20066,'Lyonar Kingdoms','Basic','True Strike','Deal 2 damage to a minion.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20067,'Lyonar Kingdoms','Epic','Holy Immolation','Restore 4 Health to a friendly minion. Deal 4 damage to enemy minions and Generals around it.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20068,'Lyonar Kingdoms','Basic','Divine Bond','Give a minion +Attack equal to its Health.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20069,'Abyssian Host','Rare','Dark Seed','Deal 1 damage to the enemy General for each card in the opponent''s action bar.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20070,'Abyssian Host','Common','Grasp of Agony','Choose an enemy minion. When it dies, it deals 3 damage to enemies around it.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20071,'Abyssian Host','Basic','Soulshatter Pact','Give all friendly minions +2 Attack this turn.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20072,'Abyssian Host','Basic','Wraithling Swarm','Summon three 1/1 Wraithlings nearby each other.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20073,'Vetruvian Imperium','Common','Siphon Energy','Dispel an enemy minion.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20074,'Vetruvian Imperium','Basic','Cosmic Flesh','Give a friendly minion +1/+3 and Provoke.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20075,'Vetruvian Imperium','Basic','Blindscorch','Lower a minion''s Attack to 0 until your next turn.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20076,'Vetruvian Imperium','Common','Astral Phasing','Give a friendly minion +5 Health and Flying.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20077,'Vetruvian Imperium','Basic','Entropic Decay','Destroy an enemy minion nearby your General.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20078,'Vetruvian Imperium','Legendary','Time Maelstrom','Reactivate your General.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20080,'Songhai Empire','Basic','Saberspine Seal','Give a minion or General +3 Attack this turn.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20081,'Songhai Empire','Basic','Phoenix Fire','Deal 3 damage to a minion or General.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20082,'Songhai Empire','Common','Twin Strike','Deal 2 damage to exactly two random enemy minions. Draw a card at end of turn.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20084,'Songhai Empire','Epic','Spiral Technique','Deal 8 damage to a minion or General.',8,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20085,'Songhai Empire','Rare','Mana Vortex','The next spell you cast this turn costs 1 less. Draw a card at end of turn.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20086,'Songhai Empire','Basic','Inner Focus','Reactivate an exhausted friendly minion with 3 or less Attack.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20087,'Songhai Empire','Epic','Onyx Bear Seal','Transform an enemy minion into a 0/2 Panddo that cannot be attacked.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20088,'Songhai Empire','Basic','Ghost Lightning','Deal 1 damage to all enemy minions.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20089,'Abyssian Host','Epic','Wraithling Fury','Give a friendly Wraithling minion +4/+4.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20090,'Lyonar Kingdoms','Basic','Martyrdom','Destroy ANY minion. Restore that minion''s Health to its General.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20093,'Vetruvian Imperium','Common','Sand Trap','Choose an enemy minion.  It can no longer move.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20094,'Songhai Empire','Rare','Deathstrike Seal','Give a friendly minion, "Whenever this damages an enemy minion, destroy that minion."',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20095,'Vetruvian Imperium','Basic','Scion''s First Wish','Give a friendly minion +1/+1. Draw a card.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20096,'Vetruvian Imperium','Basic','Scion''s Second Wish','Give a friendly minion +2/+2. It takes no damage from Generals.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20097,'Vetruvian Imperium','Legendary','Scion''s Third Wish','Give a friendly Dervish minion +3/+3 and Flying.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20099,'Vetruvian Imperium','Epic','Rasha''s Curse','Destroy a random artifact on the enemy General. Summon a Wind Dervish with Rush near them.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20100,'Songhai Empire','Common','Ancestral Divination','Draw a card for each friendly minion on the battlefield.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20168,'Songhai Empire','Common','Mist Dragon Seal','Give a friendly minion +1/+1 and teleport it to any space on the battlefield.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20104,'Lyonar Kingdoms','Epic','Circle of Life','Deal 5 damage to an enemy minion. Restore 5 Health to your General.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20105,'Vetruvian Imperium','Epic','Stars'' Fury','Summon a Wind Dervish with Rush in front of each enemy minion and General.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20106,'Songhai Empire','Common','Artifact Defiler','Destroy all artifacts on the enemy General.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20109,'Lyonar Kingdoms','Common','Beam Shock','Stun an enemy minion or General.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20111,'Magmar Aspects','Basic','Dampening Wave','Choose an enemy minion. It can no longer counterattack.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20112,'Magmar Aspects','Rare','Flash Reincarnation','The next minion you summon this turn costs 2 less and takes 2 damage.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20113,'Magmar Aspects','Common','Diretide Frenzy','Give a friendly minion +1 Attack and Frenzy.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20114,'Magmar Aspects','Common','Tremor','Stun enemy minions in a 2x2 area.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20115,'Magmar Aspects','Basic','Dance of Dreams','Whenever a friendly minion dies this turn, draw a card.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20116,'Magmar Aspects','Basic','Greater Fortitude','Give a friendly minion +2/+2.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20117,'Magmar Aspects','Common','Earth Sphere','Restore 8 Health to your General.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20118,'Magmar Aspects','Epic','Bounded Lifeforce','Your General becomes 10/10.',7,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20119,'Magmar Aspects','Common','Amplification','Give a friendly damaged minion +2 Attack and +4 Health.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20120,'Lyonar Kingdoms','Legendary','Aegis Barrier','Choose a friendly minion. It can''t be targeted by enemy spells. Draw a card.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20121,'Magmar Aspects','Legendary','Metamorphosis','Transform all enemy minions into 1/1 Magma with no abilities until the end of your opponent''s turn.',6,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20122,'Magmar Aspects','Basic','Plasma Storm','Destroy ALL minions with 3 or less Attack.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20124,'Magmar Aspects','Legendary','Chrysalis Burst','Summon a random Egg in 4 random spaces on the battlefield.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20125,'Magmar Aspects','Basic','Natural Selection','Destroy ANY minion with the lowest Attack or tied for the lowest Attack.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20128,'Lyonar Kingdoms','Legendary','Decimate','Destroy ALL minions that are not nearby any General.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20129,'Songhai Empire','Epic','Juxtaposition','Switch positions between ANY two minions.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20131,'Abyssian Host','Common','Breath Of The Unborn','Deal 2 damage to all enemy minions. Restore all friendly minions to full Health.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20132,'Vetruvian Imperium','Epic','Auroras Tears','This turn, your General gains +2 Attack for every equipped artifact.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20133,'Abyssian Host','Legendary','Deathfire Crescendo','Give a friendly minion, "Deathwatch: Gains +2/+2."',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20134,'Vanar Kindred','Basic','Chromatic Cold','Dispel a space. If there is an enemy minion or General on that space, deal it 2 damage.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20135,'Vanar Kindred','Basic','Frostfire','Give a friendly minion +3 Attack. If it is Vespyr, also give it +3 Health.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20136,'Vanar Kindred','Basic','Avalanche','Deal 4 damage to ALL minions and Generals on your starting side of the battlefield and Stun them.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20137,'Vanar Kindred','Epic','Boundless Courage','Give a friendly minion +2 Attack. It takes no damage this turn.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20138,'Vanar Kindred','Rare','Mesmerize','Teleport an enemy minion or General one space.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20139,'Vanar Kindred','Basic','Flash Freeze','Deal 1 damage to a minion and Stun it.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20140,'Vanar Kindred','Rare','Mark of Solitude','One minion becomes 5/5. It can no longer attack Generals.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20141,'Songhai Empire','Basic','Kage Lightning','Deal 5 damage to an enemy minion.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20143,'Songhai Empire','Legendary','Eight Gates','Spells you cast this turn that deal damage deal +2 damage.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20144,'Vanar Kindred','Basic','Aspect of the Fox','Transform ANY minion into a 3/3 Ravager with no abilities.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20145,'Vanar Kindred','Epic','Aspect of the Drake','Transform ANY minion into a 4/4 Whyte Drake with Flying. Nearby friendly minions gain Flying.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20146,'Vanar Kindred','Legendary','Aspect of the Mountains','Transform ANY minion into a 5/5 Seismic Elemental. Deal 5 damage to enemy minions around it.',6,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20147,'Vanar Kindred','Legendary','Gravity Well','Summon four joined 0/1 Walls with Provoke.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20148,'Vanar Kindred','Rare','Blazing Spines','Summon two joined 3/3 Walls that can attack.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20149,'Vanar Kindred','Common','Bonechill Barrier','Summon three joined 0/2 Vespyr Walls.  Minions that attack these walls are Stunned.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20150,'Vanar Kindred','Common','Polarity','Switch ANY minion''s Attack and Health.',0,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20151,'Vetruvian Imperium','Common','Bone Swarm','Deal 2 damage to the enemy General and all enemy minions around them.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20152,'Vetruvian Imperium','Rare','Fountain of Youth','Restore all friendly minions to full Health.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20153,'Vetruvian Imperium','Rare','Inner Oasis','Give all friendly minions +3 Health. Draw a card.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20154,'Abyssian Host','Epic','Rite Of The Undervault','Draw to fill your action bar.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20155,'Songhai Empire','Legendary','Heaven''s Eclipse','Draw 3 spell cards from your deck.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20156,'Magmar Aspects','Epic','Mind Steal','Steal a random minion from your opponent''s deck and summon it.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20157,'Magmar Aspects','Rare','Egg Morph','Turn a non-Egg minion into an Egg, or hatch an Egg.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20158,'Lyonar Kingdoms','Epic','Aerial Rift','Give your minions Airdrop this turn.  Draw a card.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20160,'Vanar Kindred','Common','Hailstone Prison','Return ANY minion to its action bar.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20161,'Lyonar Kingdoms','Rare','Magnetize','Pull ANY minion to the space in front of your General.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20162,'Magmar Aspects','Rare','Kinetic Equilibrium','Deal 2 damage to ALL minions in a 3x3 area. Friendly minions in the area also gain +2 Attack.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20163,'Vanar Kindred','Epic','Spirit of the Wild','Reactivate friendly minions on your opponent''s starting side of the battlefield.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20165,'Vanar Kindred','Common','Cryogenesis','Deal 4 damage to an enemy minion. Draw a Vespyr minion from your deck.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20166,'Abyssian Host','Epic','Consuming Rebirth','Destroy a friendly minion. At the end of your turn, re-summon it on the same space and give it +1/+1.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20167,'Songhai Empire','Rare','Mist Walking','Teleport your General up to 2 spaces.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20102,'Songhai Empire','Basic','Killing Edge','Give a friendly minion +4/+2. If that minion has Backstab, draw a card at end of turn.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20186,'Lyonar Kingdoms','Epic','Ironcliffe Heart','Transform a friendly minion into an Ironcliffe Guardian.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20187,'Lyonar Kingdoms','Rare','Sky Burial','Destroy a minion that is not nearby any General.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20188,'Lyonar Kingdoms','Common','Afterblaze','Give a friendly minion +2/+4. If that minion has Zeal, draw a card.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20189,'Lyonar Kingdoms','Epic','Fighting Spirit','Give all friendly minions +1 Health. Put a random Battle Pet into your action bar.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20190,'Lyonar Kingdoms','Common','Lucent Beam','Deal 2 damage to an enemy. If a minion or General was healed this turn, deal 4 damage instead.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20191,'Songhai Empire','Common','Crimson Coil','Deal 2 damage to a minion. Activate your Battle Pets.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20192,'Songhai Empire','Common','Shadow Waltz','Lower the cost of all minions with Backstab in your action bar by 1 and give them +1/+1.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20193,'Songhai Empire','Epic','Pandamonium','Transform ALL minions into 0/2 Panddo that cannot be attacked until end of turn.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20194,'Songhai Empire','Rare','Mirror Meld','Summon a copy of a friendly minion that costs 2 or less nearby.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20195,'Vetruvian Imperium','Common','Astral Flood','Put 3 random Battle Pets into your action bar.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20196,'Vetruvian Imperium','Common','Whisper of the Sands','Summon a Wind Dervish nearby each friendly Obelysk. Draw a card.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20197,'Vetruvian Imperium','Rare','Psychic Conduit','Take control of an enemy minion with 2 or less Attack until end of turn.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20198,'Vetruvian Imperium','Epic','Corpse Combustion','Summon all friendly minions with Dying Wish destroyed since your last turn on random spaces.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20199,'Abyssian Host','Epic','Lurking Fear','Lower the cost of all minions with Dying Wish in your action bar and deck by 1.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20200,'Abyssian Host','Common','Inkhorn Gaze','Deal 2 damage to a minion. If it dies this turn, put a random Battle Pet into your action bar.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20201,'Abyssian Host','Common','Sphere of Darkness','Turn a space into Shadow Creep. Draw a card.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20202,'Magmar Aspects','Common','Razor Skin','Give all friendly minions +1 Attack. Put a random Battle Pet into your action bar.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20203,'Magmar Aspects','Common','Lava Lance',' Deal 2 damage to a minion. If you have an Egg, deal 4 damage instead.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20204,'Abyssian Host','Epic','Echoing Shriek','Transform ALL minions that cost 2 or less into 1/1 Wraithlings.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20205,'Abyssian Host','Rare','Void Steal','Give an enemy minion -3 Attack. Nearby friendly minions gain +3 Attack.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20206,'Magmar Aspects','Epic','Nature''s Confluence','Summon four copies of a random Battle Pet in a 2x2 area.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20207,'Vanar Kindred','Rare','Frostburn','Deal 3 damage to all enemy minions.',5,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20208,'Vanar Kindred','Common','Wailing Overdrive','Give a friendly minion on your opponent''s starting side of the battlefield +5/+5.',4,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20209,'Vanar Kindred','Epic','Vespyric Call','Put a random Vespyr minion into your action bar. It costs 1 less and has +1/+1.',1,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20211,'Vanar Kindred','Epic','Lightning Blitz','Give all friendly minions +1/+1 and randomly teleport them to your opponent''s starting side of the battlefield.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20212,'Vanar Kindred','Legendary','Winter''s Wake','Give all friendly Wall minions +4/+4. Those minions can now move.',8,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20213,'Abyssian Host','Legendary','Obliterate','Destroy all friendly Shadow Creep to deal that much damage to all enemies.',8,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20214,'Vanar Kindred','Common','Altered Beast','Transform ANY minion into a random Battle Pet.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20216,'Vetruvian Imperium','Legendary','Circle of Desiccation','Destroy ALL non-Structure minions.',8,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20217,'Songhai Empire','Legendary','Koan of Horns','Transform all minions in your action bar and deck into 0-cost Gore Horns. Draw 3 cards.',8,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20218,'Magmar Aspects','Rare','Thumping Wave','Give a minion +5 Attack. At end of turn, transform it into a 3/3 Kin.',3,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20219,'Magmar Aspects','Legendary','Flaming Stampede','Deal 5 damage to ALL non-Egg minions and Generals.',8,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20220,'Lyonar Kingdoms','Legendary','Sky Phalanx','Summon three Silverguard Knights nearby your General.',8,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (20224,'Neutral','Basic','Riddle','While you have the Riddle, you cannot replace. Cast to give your opponent a Riddle.',2,'Spell',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30001,'Lyonar Kingdoms','Epic','Skywind Glaives','Friendly minions nearby your General gain +2 Attack.',3,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30002,'Abyssian Host','Legendary','Soul Grimwar','Your General gains, "Deathwatch: Gains +2 Attack."',3,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30004,'Lyonar Kingdoms','Basic','Sunstone Bracers','Your General gains +1 Attack.',0,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30005,'Abyssian Host','Basic','Horn of the Forsaken','Whenever your General deals damage, summon a 1/1 Wraithling nearby your General.',1,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30006,'Vetruvian Imperium','Basic','Staff Of Y''Kir','Your General gains +2 Attack.',2,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30007,'Songhai Empire','Legendary','Mask of Shadows','Your General gains Backstab (4).',2,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30008,'Vetruvian Imperium','Epic','Wildfire Ankh','Your General gains Blast.',3,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30009,'Songhai Empire','Epic','Cyclone Mask','Your General gains Ranged.',3,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30010,'Songhai Empire','Basic','Bloodrage Mask','Whenever you cast a spell, deal 1 damage to the enemy General.',1,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30011,'Vetruvian Imperium','Legendary','Hexblade','Your General gains +3 Attack. Whenever your General damages an enemy minion, its Attack becomes 1.',4,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30012,'Magmar Aspects','Basic','Adamantite Claws','Your General gains +4 Attack.',4,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30013,'Magmar Aspects','Epic','Iridium Scale','Your General gains Frenzy.',2,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30014,'Abyssian Host','Epic','Spectral Blade','Your General gains +2 Attack. Whenever your General destroys an enemy minion, restore 2 Health to your General.',2,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30015,'Vanar Kindred','Basic','Snowpiercer','Your General gains +3 Attack.',3,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30016,'Vanar Kindred','Legendary','Coldbiter','At the end of your turn, your General deals 2 damage to each enemy minion around them.',2,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30017,'Magmar Aspects','Legendary','Twin Fang','Whenever a friendly minion or your General takes damage, your General gains +2 Attack.',3,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30018,'Lyonar Kingdoms','Legendary','Arclyte Regalia','Your General gains +2 Attack. The first time your General takes damage each turn, prevent 2 of it.',4,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30019,'Vanar Kindred','Epic','Winterblade','Your General gains +2 Attack. Enemy minions damaged by your General are Stunned.',4,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30020,'Abyssian Host','Legendary','Ghost Azalea','Your General gains +1 Attack for each friendly Shadow Creep.',4,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30021,'Vanar Kindred','Legendary','White Asp','Your General gains +3 Attack. Whenever your General destroys a minion, summon a 3/3 Blazing Spine Wall on that space.',4,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30022,'Vetruvian Imperium','Legendary','Spinecleaver','Your General gains +1 Attack. Enemy minions destroyed by your General summon a Bloodfire Totem on that space.',5,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30023,'Songhai Empire','Legendary','Crescent Spear','Your General gains +1 Attack. Spells you cast that deal damage deal +1 damage.',1,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30024,'Lyonar Kingdoms','Legendary','Dawn''s Eye','Your General gains +4 Attack. At the end of your turn, repair all of your artifacts to full durability.',6,'Artifact',NULL,NULL,NULL);
INSERT INTO duelyst_cards VALUES (30025,'Magmar Aspects','Legendary','Morin-Khur','Your General gains +3 Attack. Whenever your General deals damage, hatch all friendly Eggs.',5,'Artifact',NULL,NULL,NULL);

ALTER TABLE duelyst_cards add dc_cardSet int;
ALTER TABLE duelyst_cards add dc_photo varchar(255);
ALTER TABLE duelyst_cards add dc_likes int;
ALTER TABLE duelyst_cards add dc_dislikes int;

create table duelyst_cards_comments(
dcc_id int primary key not null auto_increment,
dcc_description text,
dcc_date datetime,
dcc_username varchar(255),
dcc_card_id int,
FOREIGN KEY (dcc_username) REFERENCES duelystation_user(du_username) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (dcc_card_id) REFERENCES duelyst_cards(dc_id) ON DELETE CASCADE ON UPDATE CASCADE);

create table card_deck(
cd_id int primary key not null auto_increment,
cd_idcards int,
cd_name varchar(255),
cd_author varchar(255),
cd_description_deck varchar(255),
cd_date datetime,
cd_likes int,
cd_dislikes int,
FOREIGN KEY (cd_idcards) REFERENCES duelyst_cards(dc_id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (cd_author) REFERENCES duelystation_user(du_username) ON DELETE CASCADE ON UPDATE CASCADE);

ALTER TABLE card_deck ADD CONSTRAINT FK_cd_idcards_ON_dc_id FOREIGN KEY (cd_idcards) REFERENCES duelyst_cards(dc_id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE card_deck ADD CONSTRAINT FK_cd_author_ON_du_username FOREIGN KEY (cd_author) REFERENCES duelystation_user(du_username) ON DELETE CASCADE ON UPDATE CASCADE;


create table card_deck_comments(
cdc_id int primary key not null auto_increment,
cdc_description text,
cdc_date datetime,
cdc_username varchar(255) not null,
cdc_deck_id int,
FOREIGN KEY (cdc_username) REFERENCES duelystation_user(du_username) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (cdc_deck_id) REFERENCES card_deck(cd_id) ON DELETE CASCADE ON UPDATE CASCADE);

create table duelyst_set(
ds_id int primary key not null auto_increment,
ds_name varchar(255),
ds_releaseDate date);

ALTER TABLE duelyst_cards ADD CONSTRAINT FK_duelyst_cards_ON_duelyst_set FOREIGN KEY(dc_cardSet) REFERENCES duelyst_set(ds_id);
insert into duelystation_user values('tuso@gmail.com', 'tuso', 'realtuso', 'realtusoapellido', 'tuso');
insert into duelystation_user values('administrator@gmail.com', 'administrator', 'adminnombre', 'adminapellido', 'admin');


insert into duelyst_set values(1, 'Core Set',			 	'2016-4-27');
insert into duelyst_set values(2, "Denizens of Shim'Zar",	'2016-9-1');
insert into duelyst_set values(3, 'Rise of the Bloodborn',	'2016-12-15');
insert into duelyst_set values(4, 'Ancient Bonds',			'2017-3-14');

insert into card_deck values(2, 8, 'BEST DECK2', 'tuso', 'La mejor baraja', '2017-6-6', 933, 3);
insert into card_deck values(9, 14, 'BEST DEC9ioj', 'administrator', 'La mejor poiio', '2017-9-6', 3, 399);