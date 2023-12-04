//
//  ShoesModel.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/2/23.
//

import Foundation

struct Shoe: Codable,Identifiable {
    var id: String
    var name: String
    var mainimage: String
    var othercolorimage: String
    var star: Double   
    var price: Double
}

class ShoesInfo: ObservableObject {
    @Published var shoes: [Shoe]
    init(shoes: [Shoe] = []) {
        self.shoes = shoes
    }
}

//- 신발(이미지, 이름, 가격, 별점, Color)
