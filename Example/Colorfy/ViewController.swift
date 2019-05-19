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
        
        let colorfy = Colorfy()

        DispatchQueue.main.async {
            self.view.backgroundColor = colorfy.color(named: "u4")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

