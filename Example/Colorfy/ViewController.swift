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
    @IBOutlet weak var lgbtButton: UIButton!
    @IBOutlet weak var pinkOctoberButton: UIButton!
    
//    private let url = URL(string: "https://api.myjson.com/bins/qj0p2")!
    private let url = URL(string: "https://api.myjson.com/bins/1heb86")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        setupLGBTGradient()
        
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

    @IBAction func didTapLGBTButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didTapPinkOctoberButton(_ sender: UIButton) {
        
    }
    
    private func setupButtons() {
        lgbtButton.layer.cornerRadius = lgbtButton.frame.size.height / 2
        lgbtButton.layer.borderColor = Colorfy.shared.color(named: "white").cgColor
        lgbtButton.layer.borderWidth = 2
        
        pinkOctoberButton.layer.cornerRadius = pinkOctoberButton.frame.size.height / 2
        pinkOctoberButton.layer.borderColor = Colorfy.shared.color(named: "white").cgColor
        pinkOctoberButton.layer.borderWidth = 2
    }
    
    private func setupLGBTGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            Colorfy.shared.color(named: "lgbtRed").cgColor,
            Colorfy.shared.color(named: "lgbtOrange").cgColor,
            Colorfy.shared.color(named: "lgbtYellow").cgColor,
            Colorfy.shared.color(named: "lgbtGreen").cgColor,
            Colorfy.shared.color(named: "lgbtBlue").cgColor,
            Colorfy.shared.color(named: "lgbtPurple").cgColor
        ]
        gradient.frame = lgbtButton.bounds
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.cornerRadius = lgbtButton.layer.cornerRadius
        lgbtButton.layer.insertSublayer(gradient, at: 0)
        lgbtButton.setTitleColor(Colorfy.shared.color(named: "white"), for: .normal)
    }
}

