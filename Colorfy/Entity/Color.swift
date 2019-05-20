//
//  Color.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

import Foundation

struct Color {
    var name: String
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat
    var alpha: CGFloat
    
    init(name: String, red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        self.name = name
        self.red = red/255
        self.green = green/255
        self.blue = blue/255
        self.alpha = alpha
    }
}
