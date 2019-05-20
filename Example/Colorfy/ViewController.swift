//
//  ViewController.swift
//  Colorfy
//
//  Created by dmandarino on 05/18/2019.
//  Copyright (c) 2019 dmandarino. All rights reserved.
//

import UIKit
import Colorfy

class ViewController: UIViewController {

    private let url = URL(string: "https://api.myjson.com/bins/u52sm")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Colorfy.shared.configure(with: url)
        
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false, block: {_ in
            DispatchQueue.main.async {
                self.view.backgroundColor = Colorfy.shared.color(named: "ui4")
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

