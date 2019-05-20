//
//  Colorfy.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

import UIKit

final public class Colorfy {
    
    public static var shared = Colorfy()
    
    private var worker: ColorfyWorkerProtocol?
    private var newColors: [Color]?
    
    private init() {}
    
    public func configure(with url: URL) {
        self.worker = ColorfyWorker(url: url, delegate: self)
        self.worker?.fetchColors()
    }
    
    public func color(named name: String) -> UIColor {
        let color = getColor(named: name)
        guard let newColor = filterColor(by: name) else { return color }
        return color.isSameColor(from: newColor) ? color : newColor
    }
    
    private func getColor(named name: String) -> UIColor {
        let podBundle = Bundle(for: Colorfy.self)
        guard let podUrl = podBundle.url(forResource: "Colorfy", withExtension: "bundle") else { return UIColor.clear }
        return UIColor(named: name, in: Bundle(url: podUrl), compatibleWith: nil) ?? UIColor.clear
    }
    
    private func filterColor(by name: String) -> UIColor? {
        guard let color = self.newColors?.filter({ name == $0.name }).first else { return nil }
        return UIColor(red: color.red/255, green: color.green/255, blue: color.blue/255, alpha: color.alpha)
    }
}

extension Colorfy: ColorfyWorkerDelegate {
    
    func didFetch(colors: [Color]) {
        self.newColors = colors
    }
}
