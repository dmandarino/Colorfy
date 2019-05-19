//
//  Color.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

import Foundation

struct Color {
    var red: Float
    var green: Float
    var blue: Float
    var alpha: Float
    
    init(red: Float, green: Float, blue: Float, alpha: Float) {
        self.red = red/255
        self.green = green/255
        self.blue = blue/255
        self.alpha = alpha
    }
}
