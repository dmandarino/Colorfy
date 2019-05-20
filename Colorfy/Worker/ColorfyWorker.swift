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
    private let url: URL?
    
    init(url: URL, delegate: ColorfyWorkerDelegate) {
        self.url = url
        self.delegate = delegate
    }
    
    func fetchColors() {
        guard let url = self.url else { return }
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            
            guard let apiColors = try? JSONDecoder().decode(APIColor.self, from: data) else {
                print("Error: Couldn't decode data into APIColor")
                return
            }
            
            self.delegate?.didFetch(colors: apiColors.colors)
        }
        task.resume()
    }
}
