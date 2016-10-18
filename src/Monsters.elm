module Monsters exposing (allMonsters)

import Monster exposing (Monster, Season(..), Terrain(..), MonsterType(..))


allMonsters : List Monster
allMonsters =
    [ Monster "Walking Egg" 1 [ AllTerrain ] Spring Egg
    , Monster "Running Egg" 3 [ Wasteland, RockyTerrain, Woods ] Winter Egg
    , Monster "Riding Egg" 5 [ Grassland, Desert ] Fall Egg
    , Monster "Mob Beast" 1 [ Grassland, Wasteland, DarkForest ] Spring PhantomBeast
    , Monster "Giant Ant" 2 [ Grassland, Wasteland, RockyTerrain ] Spring PhantomBeast
    , Monster "Cockatrice" 2 [ Grassland, Woods, DarkForest ] Fall PhantomBeast
    , Monster "Kamaitachi" 2 [ Grassland, Wasteland, RockyTerrain ] Winter PhantomBeast
    , Monster "High Roadrunner" 3 [ Grassland, Wasteland, Desert ] Spring PhantomBeast
    , Monster "Speckled Bee" 3 [ Wasteland, Woods, DarkForest ] Summer PhantomBeast
    , Monster "Pegasus" 3 [ Grassland, Highlands, Woods, Mountain ] Spring PhantomBeast
    , Monster "False Egg" 3 [ Grassland, Desert, Wasteland, Woods ] Fall PhantomBeast
    , Monster "Anaconda" 3 [ Grassland, Swamp, DarkForest, Woods, Pond ] Summer PhantomBeast
    , Monster "Unicorn" 3 [ DarkForest, Jungle, Mountain ] Spring PhantomBeast
    , Monster "Griffon" 4 [ Grassland, Wasteland, Mountain ] Spring PhantomBeast
    , Monster "Loyal Dog" 4 [ AllTerrain ] Spring PhantomBeast
    , Monster "Hungry Mole" 4 [ Grassland, Highlands, Wasteland ] Winter PhantomBeast
    , Monster "Zordfish" 4 [ River, Swamp ] Winter PhantomBeast
    , Monster "Hellhound" 5 [ Wasteland, Woods, Mountain ] Winter PhantomBeast
    , Monster "Demoncat" 5 [ Woods, DarkForest, Jungle, Mountain ] Winter PhantomBeast
    , Monster "Maximillion Kabuto" 5 [ DarkForest, Woods, Mountain ] Summer PhantomBeast
    , Monster "Tumbling Nest" 5 [ Grassland, Wasteland, Highlands ] Fall PhantomBeast
    , Monster "Chimaera" 6 [ Wasteland, DarkForest, Mountain, Jungle ] Summer PhantomBeast
    , Monster "Milk Maid" 6 [ Sea ] Spring PhantomBeast
    , Monster "Basilisk" 7 [ Desert, Wasteland, Mountain, RockyTerrain ] Fall PhantomBeast
    , Monster "Garden Tortoise" 10 [ DarkForest, Jungle, Mountain, Alpine ] Summer PhantomBeast
    , Monster "Ghost Beast" 12 [ Alpine, Desert, Sea, AllHighLevelTerrain ] Spring PhantomBeast
    , Monster "Napalm Palm" 2 [ Desert, Wasteland, Mountain ] Winter PhantomPlant
    , Monster "Myconid" 2 [ Woods, DarkForest, Jungle ] Fall PhantomPlant
    , Monster "Tyrant Rose" 3 [ Woods, DarkForest, Highlands, Grassland, Wasteland ] Spring PhantomPlant
    , Monster "Parasite Eggplant" 3 [ Woods, DarkForest, Jungle ] Spring PhantomPlant
    , Monster "Charming Rafflesia" 4 [ Grassland, Wasteland, Woods ] Spring PhantomPlant
    , Monster "Death Grass" 5 [ Grassland, Swamp ] Spring PhantomPlant
    , Monster "Plantimal" 5 [ AllTerrain ] Fall PhantomPlant
    , Monster "Earth Tiger" 5 [ Desert, Wasteland, Mountain ] Winter PhantomPlant
    , Monster "Pseudo Parasol" 6 [ DarkForest, Jungle, Mountain ] Summer PhantomPlant
    , Monster "Lightstalk" 7 [ LowAlpines, DarkForest ] Fall PhantomPlant
    , Monster "Brave Bamboo" 9 [ DarkForest, Jungle, LowAlpines ] Summer PhantomPlant
    , Monster "Koneko-goblin" 2 [ AllTerrain ] Spring Nekogoblin
    , Monster "Neko-goblin" 3 [ AllTerrain ] Spring Nekogoblin
    , Monster "Hobneko-goblin" 5 [ AllTerrain ] Spring Nekogoblin
    , Monster "Meteoric Iron" 3 [ AllTerrain ] NoSeason Demonstone
    , Monster "Symhonic Crystal" 3 [ AllTerrain ] NoSeason Demonstone
    , Monster "Rock Eater" 4 [ Wasteland, RockyTerrain, Mountain, Desert ] NoSeason Demonstone
    , Monster "Moai" 5 [ AllTerrain ] NoSeason Demonstone
    , Monster "Frozen Statue" 6 [ Mountain, Alpine ] Winter Demonstone
    , Monster "Petrified Fossil" 7 [ Wasteland, RockyTerrain, Mountain, Desert, Alpine ] NoSeason Demonstone
    , Monster "Leeme Alone" 8 [ Mountain, Desert, Alpine ] NoSeason Demonstone
    , Monster "Zombie" 1 [ AllTerrain ] Summer Undead
    , Monster "Calacassa" 2 [ AllTerrain ] Summer Undead
    , Monster "Skeleton" 3 [ AllTerrain ] Fall Undead
    , Monster "Foxphorous" 4 [ AllTerrain ] Spring Undead
    , Monster "Mummy" 5 [ AllTerrain ] Summer Undead
    , Monster "Thousandbones" 6 [ AllTerrain ] Summer Undead
    , Monster "Vampire" 7 [ AllTerrain ] Summer Undead
    , Monster "Lady Saucer" 9 [ AllTerrain ] Fall Undead
    , Monster "Dulahan" 9 [ AllTerrain ] Summer Undead
    , Monster "Halloween March" 10 [ AllTerrain ] Fall Undead
    , Monster "Lich" 11 [ AllTerrain ] Summer Undead
    , Monster "Gobroach" 4 [ AllTerrain ] Summer Gobroach
    , Monster "Sky Gobroach" 5 [ AllTerrain ] Summer Gobroach
    , Monster "Radioactive Gobroach" 8 [ AllTerrain ] Summer Gobroach
    , Monster "Evil Soul" 1 [ AllTerrain ] Spring Demon
    , Monster "Poison Toad" 2 [ AllTerrain ] Summer Demon
    , Monster "Decayter" 3 [ AllTerrain ] Summer Demon
    , Monster "Meta Gnoll" 4 [ AllTerrain ] Summer Demon
    , Monster "Dragon Madder" 5 [ AllTerrain ] NoSeason Demon
    , Monster "Black Death Skull" 8 [ AllTerrain ] NoSeason Demon
    , Monster "Red Demon" 11 [ AllTerrain ] NoSeason Demon
    , Monster "Toy Soldier" 1 [ AllTerrain ] NoSeason Magical
    , Monster "Slime" 3 [ AllTerrain ] Summer Magical
    , Monster "Magic Hand" 3 [ AllTerrain ] NoSeason Magical
    , Monster "Coppelia" 5 [ AllTerrain ] NoSeason Magical
    , Monster "Haniwa Golem" 5 [ AllTerrain ] NoSeason Magical
    , Monster "Mimic Hut" 6 [ AllTerrain ] NoSeason Magical
    , Monster "Factory" 9 [ AllTerrain ] NoSeason Magical
    , Monster "Low-level Dragon" 4 [ AllTerrain ] Spring WildDragon
    , Monster "Mid-level Dragon" 7 [ AllTerrain ] Spring WildDragon
    , Monster "High-level Dragon" 9 [ AllTerrain ] Spring WildDragon
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
