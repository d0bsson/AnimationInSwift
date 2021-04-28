//
//  AnimationInfo.swift
//  AnimationInSwift
//
//  Created by Дэвид Бердников on 27.04.2021.
//


struct AnimationInfo {
    
    static let shared = AnimationInfo()
    
    let presets = ["shake", "pop", "morph", "squeeze", "wobble",
                   "swing", "flipX", "flipY", "fall", "squeezeLeft",
                   "squeezeRight", "squeezeDown", "squeezeUp", "slideLeft",
                   "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut",
                   "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp",
                   "zoomIn", "zoomOut", "flash"]
    
    let curves = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
    
    private init() {}
}
