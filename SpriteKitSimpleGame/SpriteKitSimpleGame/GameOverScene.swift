//
//  GameOverScene.swift
//  SpriteKitSimpleGame
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 5/4/15.
//  Copyright (c) 2015 Rafael Cavalcante Ferreira Santos Matos. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    
    init(size: CGSize, won:Bool) {
        
        super.init(size: size)
        
        runAction(SKAction.playSoundFileNamed("Sounds/death.mp3", waitForCompletion: false))
        
        // 1
        backgroundColor = SKColor.whiteColor()
        var bgImage = SKSpriteNode(imageNamed: "blood.png")
        self.addChild(bgImage)
        bgImage.position = CGPointMake(self.size.width/2, self.size.height/2)
        
//        // 2
//        var message = won ? "You Won!" : "You Lose :["
//        
//        // 3
//        let label = SKLabelNode(fontNamed: "Chalkduster")
//        label.text = message
//        label.fontSize = 40
//        label.fontColor = SKColor.blackColor()
//        label.position = CGPoint(x: size.width/2, y: size.height/2)
//        addChild(label)
        
        // 4
        runAction(SKAction.sequence([
            SKAction.waitForDuration(3.0),
            SKAction.runBlock() {
                // 5
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = GameScene(size: size)
                self.view?.presentScene(scene, transition:reveal)
            }
            ]))
        
    }
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}