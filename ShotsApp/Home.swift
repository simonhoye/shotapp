//
//  Home.swift
//  ShotsApp
//
//  Created by Simon Hoye on 27/07/2015.
//  Copyright (c) 2015 Simon Hoye. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundMaskView: UIView!
    @IBOutlet weak var dialogueView: UIView!
    @IBOutlet weak var shareView: UIView!
    @IBOutlet weak var popoverView: UIView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var favouritesLabel: UILabel!

    @IBAction func likeButtonDidPress(sender: AnyObject) {
    
    }
    
    @IBAction func shareButtonDidPress(sender: AnyObject) {
        shareView.hidden = false
        shareView.alpha = 0
        
        UIView.animateWithDuration(0.5, animations: {
            self.shareView.alpha = 1
        })
    }
    
    @IBAction func userButtonDidPress(sender: AnyObject) {
        popoverView.hidden = false
    }
    
    @IBAction func imageButtonDidPress(sender: AnyObject) {
        UIView.animateWithDuration(0.7, animations: {
            
            self.dialogueView.frame = CGRectMake(0, 0, 320, 568)
            self.dialogueView.layer.cornerRadius = 0
            self.imageButton.frame = CGRectMake(0, 0, 320, 240)
            self.likeButton.alpha = 0
            self.shareButton.alpha = 0
            self.userButton.alpha = 0
            self.headerView.alpha = 0
            }, completion: { finished in
                self.performSegueWithIdentifier("homeToDetail", sender: self)
        })
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertBlurView(backgroundMaskView, style: UIBlurEffectStyle.Dark)
        insertBlurView(headerView, style: UIBlurEffectStyle.Dark)
        
    }

}
