//
//  GameScene.m
//  Space Cat
//
//  Created by Sebastian Röder on 03/10/14.
//  Copyright (c) 2014 Sebastian Röder. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKSpriteNode *greenNode = [SKSpriteNode spriteNodeWithColor:[SKColor greenColor]
                                                           size:CGSizeMake(100, 100)];
    greenNode.position = CGPointMake(150, 150);
    greenNode.anchorPoint = CGPointMake(0, 0);
    
    SKSpriteNode *redNode = [SKSpriteNode spriteNodeWithColor:[SKColor redColor]
                                                         size:CGSizeMake(15, 15)];
    redNode.position = greenNode.position;
    redNode.anchorPoint = CGPointMake(1, 1);
    
    [self addChild:greenNode];
    [self addChild:redNode];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
