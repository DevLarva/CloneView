//
//  ShoesModel.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/2/23.
//

import Foundation

struct Shoe: Identifiable {
    var id = UUID()
    var name: String
    var mainimage: String
    var othercolorimage: String
    var star: String
    var price: String
}

var shoesData: [Shoe] = [
    Shoe(name: "Nike React-Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160"),
    
    Shoe(name: "Nike React-Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160"),
    
    Shoe(name: "Nike React-Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160"),
    
    Shoe(name: "Nike React-Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160"),

]
//- 신발(이미지, 이름, 가격, 별점, Color)
