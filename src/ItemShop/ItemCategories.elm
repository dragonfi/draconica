module ItemShop.ItemCategories exposing (..)

import ItemShop.Item exposing (baseItem, Item, Category(..))


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


weapon : String -> Int -> Item
weapon =
    itemOfCategory Weapon


armor : String -> Int -> Item
armor =
    itemOfCategory Armor


shield : String -> Int -> Item
shield =
    itemOfCategory Shield


ration : String -> Int -> Item
ration =
    itemOfCategory Ration


sundry : String -> Int -> Item
sundry =
    itemOfCategory Sundry


camping : String -> Int -> Item
camping =
    itemOfCategory CampingEquipment


goods : String -> Int -> Item
goods =
    itemOfCategory SpecialtyGood


smallContainer : String -> Int -> Item
smallContainer =
    itemOfCategory SmallContainer


bigContainer : String -> Int -> Item
bigContainer =
    itemOfCategory BigContainer
