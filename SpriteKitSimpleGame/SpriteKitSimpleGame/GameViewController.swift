//
//  GameViewController.swift
//  SpriteKitSimpleGame
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 5/4/15.
//  Copyright (c) 2015 Rafael Cavalcante Ferreira Santos Matos. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
        
        playBackgroundMusic ("Sounds/danceMoonRabbits.mp3")
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}