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
    var star: Double   
    var price: Double
}

var shoesData: [Shoe] = [
    Shoe(name: "React Frenzy", mainimage: "React Frenzy", othercolorimage: "React Frenzy", star: 4.8, price: 160)
    ]

//- 신발(이미지, 이름, 가격, 별점, Color)
