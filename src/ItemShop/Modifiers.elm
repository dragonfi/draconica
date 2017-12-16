module ItemShop.Modifiers exposing (allModifiers)

import ItemShop.Modifier exposing (Modifier)


normalModifiers : List Modifier
normalModifiers =
    [ Modifier "Cute" 2.0 0
    , Modifier "Beautiful" 2.0 0
    , Modifier "Sturdy" 3.0 0
    , Modifier "HighQuality" 5.0 0
    , Modifier "Used" 0.8 0
    , Modifier "Gross" 0.8 0
    , Modifier "Uncool" 0.8 0
    , Modifier "Smelly" 0.7 0
    , Modifier "Cursed" 0.5 0
    , Modifier "Broken" 0.5 0
    , Modifier "Mythril" 10.0 0
    , Modifier "Orichalcum" 50.0 0
    ]


magicalModifiers : List Modifier
magicalModifiers =
    [ Modifier "Walking" 1.0 5000
    , Modifier "Shining" 1.0 1200
    , Modifier "Speaking" 1.0 2000
    , Modifier "PlusOne" 1.0 8000
    ]


allModifiers : List Modifier
allModifiers =
    List.append normalModifiers magicalModifiers
