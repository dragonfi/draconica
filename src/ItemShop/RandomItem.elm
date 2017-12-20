module ItemShop.RandomItem exposing (randomItem, randomModifiers)

import Array exposing (Array, fromList)
import Html exposing (a)
import ItemShop.Item exposing (Item, nothing)
import ItemShop.Items exposing (allItems)
import ItemShop.Modifier exposing (Modifier, regular)
import ItemShop.Modifiers exposing (allModifiers)
import Maybe exposing (withDefault)
import Random exposing (Generator)


randomChoice : a -> Array a -> Generator a
randomChoice defaultItem items =
    Random.map (\i -> Array.get i items |> withDefault defaultItem)
        (Random.int 0 ((Array.length items) - 1))


randomItem : Generator Item
randomItem =
    Random.map2 (\item mods -> { item | modifiers = mods })
        randomBaseItem
        randomModifiers


randomBaseItem : Generator Item
randomBaseItem =
    randomChoice nothing (fromList allItems)


modifierOrEmpty : Float -> Modifier -> Generator (List Modifier)
modifierOrEmpty probability modifier =
    Random.float 0.0 1.0
        |> Random.map
            (\f ->
                if (f < probability) then
                    [ modifier ]
                else
                    []
            )


randomConst : a -> Generator a
randomConst a =
    Random.map (\b -> a) Random.bool


randomModifiers : Generator (List Modifier)
randomModifiers =
    let
        expectedNumberOfModifiers =
            2.0

        probability =
            expectedNumberOfModifiers / (toFloat <| List.length <| allModifiers)

        generators : List (Generator (List Modifier))
        generators =
            List.map (modifierOrEmpty probability) allModifiers

        emptyList =
            Random.list 0 (randomConst regular)
    in
        List.foldr (Random.map2 List.append) emptyList generators
