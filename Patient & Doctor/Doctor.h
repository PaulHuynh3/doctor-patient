//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol communicateDelegate
-(NSString*)yourName;
-(int)yourAge;
-(BOOL)healthCard;

@end

@interface Doctor : NSObject

@property(nonatomic,strong) NSString* name;
@property(nonatomic) int age;
//ask patient if they have a healthcard
@property(nonatomic) BOOL healthCard;

//delegate to pass information to other class not inheirted
@property(nonatomic,strong) id <communicateDelegate>delegate;


-(void)checkUp;

-(void)identity;

-(void)visit:(Patient *)patient;

@end
