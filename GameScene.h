//
//  GameScene.h
//  DudelJump
//
//  Created by Brian Ng on 6/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface GameScene : CCNode <CCPhysicsCollisionDelegate>{
    
    float _score;
    
    int _maxBlockNumber,_minBlockNumber,_currentBlockNumber;
    
    
    CCPhysicsNode *_physicsNode;
    
    
}

@end
