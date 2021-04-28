//
//  ViewController.swift
//  AnimationInSwift
//
//  Created by Дэвид Бердников on 27.04.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var runButton: SpringButton!
    @IBOutlet weak var animationInfoLabel: UILabel!
    
    private let animation = Animation.getAnimation()
    
    
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        if runButton.currentTitle == "Run" {
            runButton.setTitle("Run 1", for: .normal)
        }
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.duration = 
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.animate()
        
        

        
    }
    
}

