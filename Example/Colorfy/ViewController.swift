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

    override func viewDidLoad() {
        super.viewDidLoad()

        Colorfy.shared.configure()
        
        DispatchQueue.main.async {
            self.view.backgroundColor = Colorfy.shared.color(named: "ui1")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

