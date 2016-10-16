module Monsters exposing (allMonsters)

import Monster exposing (Monster, Season(..), Terrain(..), MonsterType(..))


-- TODO: Beast -> PhantomBeast
-- TODO: Forest -> DarkForest


allMonsters : List Monster
allMonsters =
    [ Monster "Walking Egg" 1 [ All ] Spring Egg ""
    , Monster "Running Egg" 3 [ Wasteland, Rocky, Woods ] Winter Egg ""
    , Monster "Riding Egg" 5 [ Grassland, Desert ] Fall Egg ""
    , Monster "Mob Beast" 1 [ Grassland, Wasteland, Forest ] Spring Beast ""
    , Monster "Giant Ant" 2 [ Grassland, Wasteland, Rocky ] Spring Beast ""
    , Monster "Cockatrice" 2 [ Grassland, Woods, Forest ] Fall Beast ""
    , Monster "Kamaitachi" 2 [ Grassland, Wasteland, Rocky ] Winter Beast ""
    , Monster "High Roadrunner" 3 [ Grassland, Wasteland, Desert ] Spring Beast ""
    , Monster "Speckled Bee" 3 [ Wasteland, Woods, Forest ] Summer Beast ""
    , Monster "Pegasus" 3 [ Grassland, Highlands, Woods, Mountain ] Spring Beast ""
    , Monster "False Egg" 3 [ Grassland, Desert, Wasteland, Woods ] Fall Beast ""
    , Monster "Anaconda" 3 [ Grassland, Swamp, Forest, Woods, Pond ] Summer Beast ""
    , Monster "Unicorn" 3 [ Forest, Jungle, Mountain ] Spring Beast ""
    , Monster "Griffon" 4 [ Grassland, Wasteland, Mountain ] Spring Beast ""
    , Monster "Loyal Dog" 4 [ All ] Spring Beast ""
    , Monster "Hungry Mole" 4 [ Grassland, Highlands, Wasteland ] Winter Beast ""
    , Monster "Zordfish" 4 [ River, Swamp ] Winter Beast ""
    , Monster "Hellhound" 5 [ Wasteland, Woods, Mountain ] Winter Beast ""
    , Monster "Demoncat" 5 [ Woods, Forest, Jungle, Mountain ] Winter Beast ""
    , Monster "Maximillion Kabuto" 5 [ Forest, Woods, Mountain ] Summer Beast ""
    , Monster "Tumbling Nest" 5 [ Grassland, Wasteland, Highlands ] Fall Beast ""
    , Monster "Chimaera" 6 [ Wasteland, Forest, Mountain, Jungle ] Summer Beast ""
    , Monster "Milk Maid" 6 [ Sea ] Spring Beast ""
    , Monster "Basilisk" 7 [ Desert, Wasteland, Mountain, Rocky ] Fall Beast ""
    , Monster "Garden Tortoise" 10 [ Forest, Jungle, Mountain, Alpine ] Summer Beast ""
    , Monster "Ghost Beast" 12 [ Alpine, Desert, Sea, AllHighLevelTerrain ] Spring Beast ""
    , Monster "Napalm Palm" 2 [ Desert, Wasteland, Mountain ] Winter Plant ""
    , Monster "Myconid" 2 [ Woods, Forest, Jungle ] Fall Plant ""
    , Monster "Tyrant Rose" 3 [ Woods, Forest, Highlands, Grassland, Wasteland ] Spring Plant ""
    , Monster "Parasite Eggplant" 3 [ Woods, Forest, Jungle ] Spring Plant ""
    , Monster "Charming Rafflesia" 4 [ Grassland, Wasteland, Woods ] Spring Plant ""
    , Monster "Death Grass" 5 [ Grassland, Swamp ] Spring Plant ""
    , Monster "Plantimal" 5 [ All ] Fall Plant ""
    , Monster "Earth Tiger" 5 [ Desert, Wasteland, Mountain ] Winter Plant ""
    , Monster "Pseudo Parasol" 6 [ Forest, Jungle, Mountain ] Summer Plant ""
    , Monster "Lightstalk" 7 [ LowAlpines, Forest ] Fall Plant ""
    , Monster "Brave Bamboo" 9 [ Forest, Jungle, LowAlpines ] Summer Plant ""
    , Monster "Koneko-goblin" 2 [ All ] Spring Nekogoblin ""
    , Monster "Neko-goblin" 3 [ All ] Spring Nekogoblin ""
    , Monster "Hobneko-goblin" 5 [ All ] Spring Nekogoblin ""
    , Monster "Meteoric Iron" 3 [ All ] NoSeason Demonstone ""
    , Monster "Symhonic Crystal" 3 [ All ] NoSeason Demonstone ""
    , Monster "Rock Eater" 4 [ Wasteland, Rocky, Mountain, Desert ] NoSeason Demonstone ""
    , Monster "Moai" 5 [ All ] NoSeason Demonstone ""
    , Monster "Frozen Statue" 6 [ Mountain, Alpine ] Winter Demonstone ""
    , Monster "Petrified Fossil" 7 [ Wasteland, Rocky, Mountain, Desert, Alpine ] NoSeason Demonstone ""
    , Monster "Leeme Alone" 8 [ Mountain, Desert, Alpine ] NoSeason Demonstone ""
    , Monster "Zombie" 1 [ All ] Summer Undead ""
    , Monster "Calacassa" 2 [ All ] Summer Undead ""
    , Monster "Skeleton" 3 [ All ] Fall Undead ""
    , Monster "Foxphorous" 4 [ All ] Spring Undead ""
    , Monster "Mummy" 5 [ All ] Summer Undead ""
    , Monster "Thousandbones" 6 [ All ] Summer Undead ""
    , Monster "Vampire" 7 [ All ] Summer Undead ""
    , Monster "Lady Saucer" 9 [ All ] Fall Undead ""
    , Monster "Dulahan" 9 [ All ] Summer Undead ""
    , Monster "Halloween March" 10 [ All ] Fall Undead ""
    , Monster "Lich" 11 [ All ] Summer Undead ""
    , Monster "Gobroach" 4 [ All ] Summer Gobroach ""
    , Monster "Sky Gobroach" 5 [ All ] Summer Gobroach ""
    , Monster "Radioactive Gobroach" 8 [ All ] Summer Gobroach ""
    , Monster "Evil Soul" 1 [ All ] Spring Demon ""
    , Monster "Poison Toad" 2 [ All ] Summer Demon ""
    , Monster "Decayter" 3 [ All ] Summer Demon ""
    , Monster "Meta Gnoll" 4 [ All ] Summer Demon ""
    , Monster "Dragon Madder" 5 [ All ] NoSeason Demon ""
    , Monster "Black Death Skull" 8 [ All ] NoSeason Demon ""
    , Monster "Red Demon" 11 [ All ] NoSeason Demon ""
    , Monster "Toy Soldier" 1 [ All ] NoSeason Magical ""
    , Monster "Slime" 3 [ All ] Summer Magical ""
    , Monster "Magic Hand" 3 [ All ] NoSeason Magical ""
    , Monster "Coppelia" 5 [ All ] NoSeason Magical ""
    , Monster "Haniwa Golem" 5 [ All ] NoSeason Magical ""
    , Monster "Mimic Hut" 6 [ All ] NoSeason Magical ""
    , Monster "Factory" 9 [ All ] NoSeason Magical ""
    , Monster "Low-level Dragon" 4 [ All ] Spring WildDragon ""
    , Monster "Mid-level Dragon" 7 [ All ] Spring WildDragon ""
    , Monster "High-level Dragon" 9 [ All ] Spring WildDragon ""
    ]


type alias Npc =
    { name : String, level : Int }


other =
    [ Npc "Hoodlum" 3
    , Npc "Low-level Bandit" 5
    , Npc "High-level Bandit" 7
    , Npc "Militia" 4
    , Npc "Knight" 7
    , Npc "Mid-level magician" 5
    , Npc "High-level magician" 7
    , Npc "Animal" 0
    ]
