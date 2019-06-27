//
//  Color.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

struct Color: Decodable {
    var name: String
    var hex: String
}

struct APIColor: Decodable {
    var colors: [Color]
}
