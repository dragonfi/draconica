module ItemShop.Items exposing (..)

import ItemShop.Item exposing (Item)
import ItemShop.ItemConstructors
    exposing
        ( accessory
        , armor
        , bigContainer
        , camping
        , cape
        , goods
        , hat
        , ration
        , shield
        , shoe
        , smallContainer
        , staff
        , sundry
        , weapon
        )


travelGear : List Item
travelGear =
    [ shoe "Rain boots" 300
    , shoe "Walking shoes" 350
    , shoe "Climbing shoes" 450
    , shoe "Snow boots" 500
    , shoe "Mud boots" 500
    , shoe "Jungle boots" 600
    , cape "Windbreaker" 120
    , cape "Warm cape" 160
    , cape "Raincoat" 400
    , cape "Camo cape" 400
    , cape "Fire cape" 700
    , cape "Sun cape" 400
    , staff "Walking stick" 50
    , staff "Hiking staff" 100
    , staff "Snow staff" 280
    , hat "Cap" 120
    , hat "Sun hat" 180
    , hat "Woolen hat" 200
    , hat "Sand hood" 340
    , accessory "Googles" 4000

    -- todo: Accessory 100~ decorative
    ]


weapons : List Item
weapons =
    [ weapon "Light Blade" 400
    , weapon "Blade" 700
    , weapon "Polearm" 350
    , weapon "Axe" 500
    , weapon "Bow" 750
    , armor "Clothes" 50
    , armor "Light Armor" 900
    , armor "Medium Armor" 2000
    , armor "Heavy Armor" 10000
    , shield "Light Shield" 400
    , shield "Heavy Shield" 1200
    ]


specialtyGoods : List Item
specialtyGoods =
    [ goods "Small Goods" 100
    , goods "Medium Goods" 500
    , goods "Large Goods" 1000
    ]


rations : List Item
rations =
    [ ration "Food" 5
    , ration "Alcohol" 10
    , ration "Disgusting Rations" 5
    , ration "Rations" 10
    , ration "Delicious Rations" 70
    , ration "Animal Feed" 5
    ]


sundries : List Item
sundries =
    [ sundry "Perfume" 500
    , sundry "Quill pen" 2
    , sundry "Glass pen" 120
    , sundry "Leather page" 2
    , sundry "Leather notebook" 100
    , sundry "Soap" 5
    , sundry "Washing set" 15
    , sundry "Umbrella" 50
    , sundry "Compass" 1500
    , sundry "Torch" 5
    , sundry "Lantern" 80
    , sundry "Firestarter set" 20
    , sundry "Utensils" 10
    , sundry "Repair kit" 100
    , sundry "Rope, 10m" 50
    , sundry "Hand mirror" 300
    , sundry "Grandfather clock" 1000

    -- todo: Instrument 300+ (guitar, tambourine, lyre, trumpet)
    ]


campingEquipment : List Item
campingEquipment =
    [ camping "Bedding" 40
    , camping "Sleeping bag" 50
    , camping "Tent" 120
    , camping "Arctic tent" 300
    , camping "Large tent" 500
    , camping "Flowstone" 20
    , camping "Portable bath" 450
    , camping "Pillow" 10
    , camping "Stuffed animal" 100
    , camping "Insect repellant candle" 10
    ]


containers : List Item
containers =
    [ smallContainer "Waterskin" 10
    , smallContainer "Magic jar" 2000
    , smallContainer "Traveling bag" 10
    , smallContainer "Belt pouch" 3
    , smallContainer "Herb bottle" 100
    , bigContainer "Barrel" 10
    , bigContainer "Backpack" 20
    , bigContainer "Large backpack" 40
    , bigContainer "Wooden chest" 10
    ]


allItems : List Item
allItems =
    List.concat
        [ travelGear
        , weapons
        , specialtyGoods
        , rations
        , sundries
        , campingEquipment
        , containers
        ]
