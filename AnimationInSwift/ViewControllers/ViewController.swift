//
//  ViewController.swift
//  AnimationInSwift
//
//  Created by Дэвид Бердников on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var runButton: SpringButton!
    @IBOutlet weak var animationInfoLabel: UILabel!
    
    // MARK: - Private Properties
    private var animation = Animation.getAnimation()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        getNameLabel()
    }
    
    // MARK: - IB Actions
    @IBAction func runSpringAnimation() {
        createAnimation()
        getNameLabel()
    }
    
    // MARK: - Private Methods
    private func getNameLabel() {
        animationInfoLabel.text = String(animation.labelData)
    }
    
    private func createAnimation() {
        animation = Animation.getAnimation()
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()
        
        runButton.setTitle("Run \(animation.preset)", for: .normal)
        
    }
}

