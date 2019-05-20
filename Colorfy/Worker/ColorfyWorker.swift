//
//  ColorfyWorker.swift
//  Colorfy
//
//  Created by Douglas Mandarino on 18/05/19.
//

import Foundation


protocol ColorfyWorkerProtocol {
    func fetchColors()
}

protocol ColorfyWorkerDelegate: class {
    func didFetch(colors: [Color])
}

final class ColorfyWorker: ColorfyWorkerProtocol {
    
    weak var delegate: ColorfyWorkerDelegate?
    
    init(delegate: ColorfyWorkerDelegate) {
        self.delegate = delegate
    }
    
    func fetchColors() {
        let color = Color(name: "ui4", red: 115, green: 10, blue: 200, alpha: 1)
        self.delegate?.didFetch(colors: [color])
    }
}
