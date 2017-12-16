module ItemShop.Items exposing (baseItems)

import ItemShop.Item exposing (Item, Category(..), baseItem)


baseItems : List Item
baseItems =
    [ baseItem "Rain Boots" Shoe 300
    , baseItem "Jungle Boots" Shoe 600
    ]
