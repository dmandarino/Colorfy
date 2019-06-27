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

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var label: UILabel!
    
//    private let url = URL(string: "https://api.myjson.com/bins/qj0p2")!
    private let url = URL(string: "https://api.myjson.com/bins/1heb86")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {_ in
            Colorfy.shared.configure(with: self.url)
        })
    
        self.firstView.backgroundColor = Colorfy.shared.color(named: "emerald") 
        
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true, block: {_ in
            DispatchQueue.main.async {
                self.view.backgroundColor = Colorfy.shared.color(named: "colorUi40")
                self.secondView.backgroundColor = Colorfy.shared.color(named: "colorUi60")
                self.label.textColor = Colorfy.shared.color(named: "vermillion")
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

