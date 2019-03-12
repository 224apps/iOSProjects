//
//  KeyframeAnimationsViewController.swift
//  Animator_Starter
//
//  Created by Abdoulaye Diallo on 3/12/19.
//  Copyright © 2019 224apps, LLC. All rights reserved.
//

import UIKit

class KeyframeAnimationsViewController: UIViewController {

    // MARK: Storyboard outlets
    @IBOutlet weak var animationTarget: UIButton!
    var targetOffset: CGFloat {
        return animationTarget.frame.size.width / 2
    }
    // MARK: Appearance
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: UI Setup
        animationTarget.round(cornerRadius: animationTarget.frame.size.width/2, borderWidth: 3.0, borderColor: .black)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // TODO: Fire keyframe animation
        bounceImageWithKeyframes()
        segueToNextViewController(segueID: Constants.Segues.toConstraintsVC, delay: 8.0)
        
        
    }

    // MARK: Keyframe animation
    func bounceImageWithKeyframes(){
        UIView.animateKeyframes(withDuration: 4.0, delay: 0, options: [ .calculationModePaced], animations: {
            let origin = self.animationTarget.center
            //Right
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.animationTarget.center = AnimationManager.screenRight
                self.animationTarget.center.y = self.targetOffset
            })
            //Top
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.animationTarget.center = AnimationManager.screenTop
                self.animationTarget.center.x  += self.targetOffset
            })
            //Left
            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25, animations: {
                self.animationTarget.center = AnimationManager.screenLeft
                self.animationTarget.center.x  += self.targetOffset
            })
            //Bottom
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.animationTarget.center = origin
                self.animationTarget.center.y  -= self.targetOffset
            })
            
            
        }, completion: nil)
    }
}
