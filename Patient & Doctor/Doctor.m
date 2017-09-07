//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"";
        _age = 0;
        _healthCard = NO;
        
    }
    return self;
}

//delegate method can only be called with the methods we assign users to conform to!!
-(void)checkUp{
    
    self.age = [self.delegate yourAge];
    
    self.name = [self.delegate yourName];
}

//ask if patient has healthcard
-(void)identity{
    
 self.healthCard = [self.delegate healthCard];
    
    if (self.healthCard == YES){
 
        NSLog(@"Yes, I can see you");
    }else {
        NSLog(@"I can not see you without your healthcard");
    
    }
    
}


@end
