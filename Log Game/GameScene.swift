//
//  GameScene.swift
//  Log Game
//
//  Created by mitchell hudson on 1/12/17.
//  Copyright © 2017 Mitchell Hudson. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var box: SKSpriteNode!
    var floor: SKSpriteNode!
    
    override init(size: CGSize) {
        super.init(size: size)
        
        self.physicsWorld.contactDelegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        print(contact.bodyA, contact.bodyB)
    }
    
    
    override func didMove(to view: SKView) {
        
        box = makeBox(color: UIColor.red)
        box.position.x = 100
        box.position.y = 100
        addChild(box)
        
        print("box")
        print(box)
        
        makeFloor()
    }
    
    func makeBox(color: UIColor) -> SKSpriteNode {
        let box = SKSpriteNode(color: color, size: CGSize(width: 30, height: 30))
        box.physicsBody = SKPhysicsBody(rectangleOf: box.size)
        
        return box
    }
    
    func makeFloor() {
        floor = SKSpriteNode(color: UIColor.green, size: CGSize(width: self.size.width, height: 30))
        addChild(floor)
        floor.position.x = self.size.width / 2
        
        floor.physicsBody = SKPhysicsBody(rectangleOf: floor.size)
        floor.physicsBody?.affectedByGravity = false
        floor.physicsBody?.isDynamic = false
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
