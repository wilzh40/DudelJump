//
//  GameScene.m
//  DudelJump
//
//  Created by Brian Ng on 6/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

#pragma mark meta

- (void) onEnter {
    [self setVars];
    //Once the scene enters, loads and initializes all the neccesary variables
    [super onEnter];
}

#pragma mark init
- (void) setVars {
    
    //Allows accelerometer and touch control
    self.userInteractionEnabled = TRUE;
    //Draws bounding box
     _physicsNode.debugDraw = YES;
    

    //Self Explanatory
    [self initHero];
    [self initBlocks];
    [self initPhysics];
    
    
    
}

- (void) initHero {
    
    //Loads a CCNode based on the CCBReader sprite called Hero
    CCNode * hero = [CCBReader load:@"Hero"];
    //Add the Hero to the physicsWorld so it can be drawn and visible
    [_physicsNode addChild:hero z:5];
    
}

- (void) initBlocks {
    
}

- (void) initPhysics {
    
    //Sets the collisionDelegate of the physicsNode to this class so it could detect collisions
    _physicsNode.collisionDelegate = self;
}
#pragma mark update

- (void) update:(CCTime) dt {
    [self generateBlocks];
    
}

- (void) generateBlocks {
    //Based on hero height. If the velocity is positive, as the background is being dropped down create blocks randomly
    
}



#pragma mark collisions

#pragma mark userInteraction


@end
