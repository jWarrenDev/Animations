//
//  ViewController.swift
//  Animations
//
//  Created by Jerrick Warren on 10/13/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dont need to use transient because we disabled autoLayout
        let greenSquare = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        greenSquare.backgroundColor = .green
        view.addSubview(greenSquare)
    }

    @IBAction func animate(_ sender: Any) {
        
    }
    
}

