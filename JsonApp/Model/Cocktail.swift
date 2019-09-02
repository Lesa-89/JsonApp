//
//  Cocktail.swift
//  JsonApp
//
//  Created by macbook on 24/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation

struct Cocktail: Decodable {
    let strDrink: String?
    let strAlcoholic: String?
    let strDrinkThumb: String?
    let strIngredient1: String?
    let strIngredient2: String?
}

struct CocktailDescription: Decodable {
    let drinks: [Cocktail]?
}

//{"drinks":
//    [{"idDrink":"15427",
//    "strDrink":"Grand Blue",
//    "strDrinkAlternate":null, "strDrinkES":null,
//    "strDrinkDE":null,
//    "strDrinkFR":null,
//    "strDrinkZH-HANS":null,
//    "strDrinkZH-HANT":null,
//    "strTags":null,
//    "strVideo":null,
//    "strCategory":"Ordinary Drink",
//    "strIBA":null,
//    "strAlcoholic":"Alcoholic",
//    "strGlass":"Old-fashioned glass",
//    "strInstructions":"Serve in an old fashioned glass.",
//    "strInstructionsES":null,
//    "strInstructionsDE":"In einem old-fashioned Glas servieren.",
//    "strInstructionsFR":null,
//    "strInstructionsZH-HANS":null,
//    "strInstructionsZH-HANT":null,
//    "strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/vsrsqu1472761749.jpg",
//    "strIngredient1":"Malibu rum",
//    "strIngredient2":"Peach schnapps",
//    "strIngredient3":"Blue Curacao",
//    "strIngredient4":"Sweet and sour",
//    "strIngredient5":"",
//    "strIngredient6":"",
//    "strIngredient7":"",
//    "strIngredient8":"",
//    "strIngredient9":"",
//    "strIngredient10":"",
//    "strIngredient11":"",
//    "strIngredient12":"",
//    "strIngredient13":"",
//    "strIngredient14":"",
//    "strIngredient15":"",
//    "strMeasure1":"1 1\/2 cl ",
//    "strMeasure2":"1 1\/2 cl ",
//    "strMeasure3":"1 1\/2 cl ",
//    "strMeasure4":"3 cl ",
//    "strMeasure5":" ",
//    "strMeasure6":" ",
//    "strMeasure7":" ",
//    "strMeasure8":" ",
//    "strMeasure9":" ",
//    "strMeasure10":"",
//    "strMeasure11":"",
//    "strMeasure12":"",
//    "strMeasure13":"",
//    "strMeasure14":"",
//    "strMeasure15":"",
//    "strCreativeCommonsConfirmed":"No",
//    "dateModified":"2016-09-01 21:29:09"}]}
