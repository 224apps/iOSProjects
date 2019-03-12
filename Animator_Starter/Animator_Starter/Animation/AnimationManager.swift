//
//  AnimationManager.swift
//  Animator_Starter
//
//  Created by Abdoulaye Diallo on 3/12/19.
//  Copyright © 2019 224apps, LLC. All rights reserved.
//

import UIKit

class AnimationManager {
    
    //Calculate screen bounds
    
    class var screenBounds : CGRect {
        
         return UIScreen.main.bounds
    }
    //Screen positions
    
    class var screenRight: CGPoint {
         return CGPoint(x: screenBounds.maxX , y: screenBounds.midY)
    }
    class var screenLeft: CGPoint {
         return CGPoint(x: screenBounds.minX, y: screenBounds.midY)
    }
    class var screenTop: CGPoint {
        return CGPoint(x: screenBounds.midX, y: screenBounds.minY)
    }
    
    class var screenBottom: CGPoint {
         return CGPoint(x: screenBounds.midX, y: screenBounds.maxY)
    }
    
    //Tracking Variables.
    var constraintOrigins = [CGFloat]()
    var currentConstraint: [NSLayoutConstraint]!
    
    init(activeConstraints:[NSLayoutConstraint]) {
        for constraint in activeConstraints {
            constraintOrigins.append(constraint.constant)
            constraint.constant -= AnimationManager.screenBounds.width
        }
         currentConstraint =  activeConstraints
    }
}


