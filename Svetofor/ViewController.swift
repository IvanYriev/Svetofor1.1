//
//  ViewController.swift
//  Svetofor
//
//  Created by Юрьев Иван on 04.04.2024.
//

import UIKit



class ViewController: UIViewController {
    
    enum color {
        case red, yellow, green
    }
    
    @IBOutlet var redFlag: UIView!
    @IBOutlet var yellowFlag: UIView!
    @IBOutlet var greenFlag: UIView!
    @IBOutlet var startButton: UIButton!
   
    private var flag = color.red
    
    private let colorIsOn: CGFloat = 1
    private let colorIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        
        
        redFlag.alpha = colorIsOff
        yellowFlag.alpha = colorIsOff
        greenFlag.alpha = colorIsOff
        
        redFlag.layer.cornerRadius = redFlag.frame.width / 2
        yellowFlag.layer.cornerRadius = yellowFlag.frame.width / 2
        greenFlag.layer.cornerRadius = greenFlag.frame.width / 2
        
        startButton.setTitle("Start", for: .normal)
        
    }

    @IBAction func Button(_ sendor: Any) {
        
        startButton.setTitle("Next", for: .normal)
        
        switch flag {
        case .red:
            redFlag.alpha = colorIsOn
            flag = .yellow
            greenFlag.alpha = colorIsOff
        case .yellow:
            redFlag.alpha = colorIsOff
            yellowFlag.alpha = colorIsOn
            flag = .green
        case .green:
            redFlag.alpha = colorIsOff
            yellowFlag.alpha = colorIsOff
            greenFlag.alpha = colorIsOn
            flag = .red
        }
      
        }
        
    }
    


