//
//  UIColor.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

import UIKit


extension UIColor {
    
    func isSameColor(from color: UIColor) -> Bool {
        guard let color1 = self.rgb(), let color2 = color.rgb(), color1 == color2 else { return false }
        return true
    }
    
    private func rgb() -> Int? {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            let iRed = Int(fRed * 255.0)
            let iGreen = Int(fGreen * 255.0)
            let iBlue = Int(fBlue * 255.0)
            let iAlpha = Int(fAlpha * 255.0)
            let rgb = (iAlpha << 24) + (iRed << 16) + (iGreen << 8) + iBlue
            return rgb
        } else {
            return nil
        }
    }
}
