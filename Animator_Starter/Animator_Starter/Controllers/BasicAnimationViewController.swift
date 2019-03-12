//
//  ViewController.swift
//  Animator_Starter
//
//  Created by Abdoulaye Diallo on 3/12/19.
//  Copyright © 2019 224apps, LLC. All rights reserved.
//

import UIKit

class BasicAnimationViewController: UIViewController {
    
    // MARK: Storyboard outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var graphic: UIImageView!
    @IBOutlet weak var loadingLabel: UILabel!
    
    // MARK: Appearance
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // UI setup
        graphic.round(cornerRadius: graphic.frame.size.width/2, borderWidth: 3.0, borderColor: .black)
        
        // TODO: Animation setup
        titleLabel.alpha = 0
        graphic.alpha = 0
        loadingLabel.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // TODO: Fire initial animations
        animategraphiIn()
        animateTitleLabelIn()
    }
    
    //MARK: - Animations
    
    func animateTitleLabelIn() {
        UIView.animate(withDuration: 1.5) {
            self.titleLabel.frame.origin.y -= 50
            self.titleLabel.alpha = 1
        }
    }
    func animategraphiIn() {
        UIView.animate(withDuration: 1.5, delay: 0.75, options: [.curveEaseInOut], animations: {
            self.graphic.alpha = 1
            self.graphic.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (completed) in
            self.animateloadingLabel()
            self.segueToNextViewController(segueID: Constants.Segues.toSpringsVC, delay: 3.0)
        }
    }
    func animateloadingLabel(){
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.loadingLabel.alpha = 1
            self.loadingLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        })
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

