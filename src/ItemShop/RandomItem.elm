module ItemShop.RandomItem exposing (randomItem)

import Array exposing (Array, fromList)
import Maybe exposing (withDefault)
import Random exposing (Generator)
import ItemShop.Item exposing (Item, nothing)
import ItemShop.Items exposing (baseItems)


randomChoice : a -> Array a -> Generator a
randomChoice defaultItem items =
    Random.map (\i -> Array.get i items |> withDefault defaultItem)
        (Random.int 0 (Array.length items))


randomItem : Generator Item
randomItem =
    randomChoice nothing (fromList baseItems)
