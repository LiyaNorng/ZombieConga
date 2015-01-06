//
//  GameScene.swift
//  ZombieConga
//
//  Created by Delgado-Moore on 1/4/15.
//  Copyright (c) 2015 delgado-moore. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
  
  let superZombie:SKSpriteNode = SKSpriteNode(imageNamed: "zombie3")
  //superZombie.name = "player"
  
  override func didMoveToView(view: SKView) {
    /* Setup your scene here */
    /* Initial code
    let myLabel = SKLabelNode(fontNamed:"Chalkduster")
    myLabel.text = "Hello, World!";
    myLabel.fontSize = 65;
    myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
    
    self.addChild(myLabel)
    */
    let background = SKSpriteNode(imageNamed: "background1")
    background.position = CGPoint(x:size.width/2, y:size.height/2)
    background.zPosition = -1
    
    addChild(background)
    
    
    superZombie.position = CGPoint(x: 400, y: 400)
    addChild(superZombie)
  }
  
  override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    /* Called when a touch begins */
    
    for touch: AnyObject in touches {
      let location = touch.locationInNode(self)
      
      let sprite = SKSpriteNode(imageNamed:"zombie1")
      
      sprite.xScale = 0.5
      sprite.yScale = 0.5
      sprite.position = location
      
      let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:2)
      
      sprite.runAction(SKAction.repeatActionForever(action))
      
      print(sprite)
      
      self.addChild(sprite)
    }
  }
  
  override func update(currentTime: CFTimeInterval) {
    /* Called before each frame is rendered */
    superZombie.position = CGPoint(x: superZombie.position.x + 4,
      y: superZombie.position.y)
  }
}
