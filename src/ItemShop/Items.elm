module ItemShop.Items exposing (allItems)

import ItemShop.Item exposing (Category, Category(..), Item, baseItem)


itemOfCategory : Category -> String -> Int -> Item
itemOfCategory =
    flip baseItem


shoe : String -> Int -> Item
shoe =
    itemOfCategory Shoe


cape : String -> Int -> Item
cape =
    itemOfCategory Cape


staff : String -> Int -> Item
staff =
    itemOfCategory Staff


hat : String -> Int -> Item
hat =
    itemOfCategory Hat


accessory : String -> Int -> Item
accessory =
    itemOfCategory Accessory


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
    ]


allItems : List Item
allItems =
    List.concat [ travelGear ]
