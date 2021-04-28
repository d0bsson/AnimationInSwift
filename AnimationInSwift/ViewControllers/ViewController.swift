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
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNameLabel()
    }
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        getNameButton()
        createAnimation()
        getNameButton()
        getNameLabel()
        animation = Animation.getAnimation()
    }
    
    private func getNameLabel() {
        animationInfoLabel.text = String(animation.labelData)
    }
    private func createAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.delay = CGFloat(animation.delay)

        springAnimationView.animate()
    }
    private func getNameButton() {
        if runButton.currentTitle == "Run" {
            runButton.setTitle("Run \(animation.preset)", for: .normal)
        }
    }
}

