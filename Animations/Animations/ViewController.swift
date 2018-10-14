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
        view.backgroundColor = .black
        
        greenSquare.backgroundColor = .green
        view.addSubview(greenSquare)
        
        purpleSquare.backgroundColor = .purple
        view.addSubview(purpleSquare)
    }

    @IBAction func animate(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            // create frame for greenSquare
            var frame = self.greenSquare.frame
            frame.origin.x += 25
            frame.origin.y += 75
            
            // change the color from green to blue
            self.greenSquare.frame = frame
            self.greenSquare.backgroundColor = .blue
        }
        
        // drop down to Core Animation for the purple square
        // pass in a string
        CATransaction.begin()
        CATransaction.setCompletionBlock {
            self.purpleSquare.layer.backgroundColor = UIColor.orange.cgColor
        }
        let animation = CAKeyframeAnimation(keyPath: "backgroundColor")
        animation.values = [UIColor.gray.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.red.cgColor, UIColor.purple.cgColor]
        
        //set animation duration
        //remove on completion
        animation.duration = 2.0
        animation.repeatCount = 2 // or 100
        purpleSquare.layer.add(animation, forKey: "backgroundColorAnimation")
        CATransaction.commit()
        
        
    }
    
     // dont need to use transient because we disabled autoLayout
     let greenSquare = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
     let purpleSquare = UIView(frame: CGRect(x: 150, y: 360, width: 75, height: 75))
}

