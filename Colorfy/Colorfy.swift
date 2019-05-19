//
//  Colorfy.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

import UIKit

public class Colorfy {
    
    public init() {}
    
    public func color(named name: String) -> UIColor {
        let color = getColor(named: name)
        let color2 = getColor(named: name)
        
        return color.isSameColor(from: color2) ? color : color2
    }
    
    private func getColor(named name: String) -> UIColor {
        let podBundle = Bundle(for: Colorfy.self)
        return UIColor(named: name, in: podBundle, compatibleWith: nil) ?? UIColor.clear
    }
}


