//
//  Doctor.h
//  Doctor&Patient2
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
//when we import a class and then that class import this class it doesnt error.
@class Prescription;
@class Patient;


@interface Doctor : NSObject

@property NSString* specialization;
@property NSString* doctorName;
@property NSMutableSet* patients;

-(instancetype)initWithDoctor:(NSString*)doctorName andSpecilization:(NSString*)specialization;

-(Prescription *)requestMedication:(NSString *)symptoms;

@end
