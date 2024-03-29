//
//  Ball.m
//  CocoShooter
//
//  Created by HARADA SHINYA on 1/31/13.
//
//

#import "Ball.h"

@implementation Ball
{
    CGPoint vec;
    CGPoint gravity;
    CCSprite *ball;
    float force;
    float friction;
    CCLabelTTF *scoreLabel;
    
}
-(void)setup
{
    
    gravity = ccp(0,-1);
    vec = ccp(0,1);
    friction = 0.9;
    self.sprite = [CCSprite spriteWithFile:@"ball.png"];
}

-(id)init
{
    
    return self;
}
-(void)fire
{
    
}
-(void)move
{
    gravity.y -= 0.1;
    force  = 10;
    vec =  ccp(force*cosf(self.angle) * friction ,-1*force *sinf(self.angle));
    if (self.hasHitted == true){
        self.sprite.opacity = 0.9;
    }
    
    self.sprite.position = ccpAdd(self.sprite.position,ccpAdd(vec,gravity));
    
    
    
}

@end
