//
//  YYBouncesContentView.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/12.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit

class YYBouncesContentView: YYBasicContentView {
    public var duration = 0.3
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public override required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    func bounceAnimation()  {
        let imliseAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        imliseAnimation.values =  [1.0 ,1.4, 0.9, 1.15, 0.95, 1.02, 1.0]
        imliseAnimation.duration = duration * 2
        imliseAnimation.calculationMode = kCAAnimationCubic
        imageView.layer.add(imliseAnimation, forKey: nil)
        
    }
    
    override func selectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bounceAnimation()
        completion?()
    }
    override func reselectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bounceAnimation()
        completion?()
    }
}
