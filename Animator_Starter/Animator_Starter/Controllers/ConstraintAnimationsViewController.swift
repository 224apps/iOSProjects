//
//  ConstraintAnimationsViewController.swift
//  Animator_Starter
//
//  Created by Abdoulaye Diallo on 3/12/19.
//  Copyright © 2019 224apps, LLC. All rights reserved.
//
import UIKit

class ConstraintAnimationsViewController: UIViewController {
    
    // MARK: Storyboard outlets
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var newsletterView: UIView!
    @IBOutlet weak var welcomeCenterX: NSLayoutConstraint!
    @IBOutlet weak var newsletterCenterX: NSLayoutConstraint!
    
    // MARK: Additional variables
    var newsletterInfoLabel = UILabel()
    var animManager : AnimationManager!
    
    // MARK: Appearance
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Programmatic views
        newsletterInfoLabel.backgroundColor = .clear
        newsletterInfoLabel.text = "Help us make your animation code that much better by subscribing to our weekly newsletter! \n\n It's free and you can unsubscribe any time without hurting our feelings...much."
        newsletterInfoLabel.font = UIFont(name: "Bodoni 72 Oldstyle", size: 15)
        newsletterInfoLabel.textColor = .darkGray
        newsletterInfoLabel.textAlignment = .center
        newsletterInfoLabel.alpha = 1
        newsletterInfoLabel.backgroundColor = .clear
        newsletterInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        newsletterInfoLabel.numberOfLines = 0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // TODO: Offscreen positioning
        
        animManager = AnimationManager(activeConstraints: [welcomeCenterX, newsletterCenterX])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // TODO: Fire initial animations
        animateViewsConstraints()
    }
    
    // MARK: Actions
    
    @IBAction func infoOnButtonPressed(_ sender: UIButton) {
        animateNewsLetterHeight()
        animateWelcomeLabel()
    }
    func animateViewsConstraints(){
        
        UIView.animate(withDuration: 1.5, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.welcomeCenterX.constant = self.animManager.constraintOrigins[0]
            self.newsletterCenterX.constant = self.animManager.constraintOrigins[1]
            self.view.layoutIfNeeded()
        })
    }
    
    func animateNewsLetterHeight(){
        if let heightConstraint =  newsletterView.returnConstraint(withID: "newsLetterHeight"){
            print(heightConstraint.description)
            heightConstraint.constant = 350
        } else {
            print("No description found for that ID.")
        }
        UIView.animate(withDuration: 1.75, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.view.layoutIfNeeded()
        }){ completed in
            self.animateDynamicInfoLabel()
        }
    }
    
    func animateWelcomeLabel(){
        
        let modifiedWelcomeTop = NSLayoutConstraint(item: welcomeLabel, attribute: .top, relatedBy: .equal, toItem: welcomeLabel.superview, attribute: .top, multiplier: 1, constant: 100)
        if let welcomeTop = view.returnConstraint(withID: "welcomeLabelTop"){
            print(welcomeTop.description)
            welcomeTop.isActive = false
            modifiedWelcomeTop.isActive = true
        }
        
        UIView.animate(withDuration: 0.75, animations: {
            self.view.layoutSubviews()
        }, completion: nil)
    }
    
    func animateDynamicInfoLabel() {
        newsletterView.addSubview(newsletterInfoLabel)
        let xAnchor = newsletterInfoLabel.centerXAnchor.constraint(equalTo: newsletterView.leftAnchor, constant: -75)
        let yAnchor = newsletterInfoLabel.centerYAnchor.constraint(equalTo: newsletterView.centerYAnchor)
        let widthAnchor = newsletterInfoLabel.widthAnchor.constraint(equalTo: newsletterView.widthAnchor)
        let heightAnchor = newsletterInfoLabel.heightAnchor.constraint(equalTo: newsletterInfoLabel.widthAnchor)
        NSLayoutConstraint.activate([xAnchor, yAnchor, widthAnchor, heightAnchor])
        self.view.layoutSubviews()
        
        //Animate Label
        
        UIView.animate(withDuration: 1.0) {
            xAnchor.constant = self.newsletterInfoLabel.frame.size.width / 2
            self.newsletterInfoLabel.alpha = 1
        }
    }

}

extension UIView {
    func returnConstraint(withID: String) -> NSLayoutConstraint? {
        var constraintSearch: NSLayoutConstraint!
        for constraint in self.constraints {
            constraintSearch = constraint
        }
        return constraintSearch
    }
}
