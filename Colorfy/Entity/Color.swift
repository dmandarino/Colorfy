//
//  Color.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

import Foundation

struct Color: Decodable {
    var name: String
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat
    var alpha: CGFloat
}

struct APIColor: Decodable {
    var colors: [Color]
}
