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
    }
    
    @IBAction func userButtonDidPress(sender: AnyObject) {
        popoverView.hidden = false
    }
    
    @IBAction func imageButtonDidPress(sender: AnyObject) {
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertBlurView(backgroundMaskView, UIBlurEffectStyle.Dark)
        insertBlurView(headerView, UIBlurEffectStyle.Dark)
        
    }

}
