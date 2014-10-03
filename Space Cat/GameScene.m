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
    CGPoint position = CGPointMake(10, 10);
    CGPoint anchorPoint = CGPointMake(0, 0);
    int longSide = 200;
    int shortSide = 10;

    SKSpriteNode *greenNode = [SKSpriteNode spriteNodeWithColor:[SKColor greenColor]
                                                           size:CGSizeMake(shortSide, longSide)];
    greenNode.position = position;
    greenNode.anchorPoint = anchorPoint;
    
    SKSpriteNode *redNode = [SKSpriteNode spriteNodeWithColor:[SKColor redColor]
                                                         size:CGSizeMake(longSide, shortSide)];
    redNode.position = position;
    redNode.anchorPoint = anchorPoint;
    
    [self addChild:greenNode];
    [self addChild:redNode];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
