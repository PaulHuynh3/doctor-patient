//
//  Patient.h
//  Doctor&Patient2
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property int age;
@property NSString* name;
//validate if user has healthcard
@property BOOL healthCard;
//set to keep list of all prescriptions
@property NSMutableSet *prescriptions;


-(instancetype)initWithPatient:(NSString*)name andAge:(int)age;

//using the doctor class as an input as the patient has to see the doctor
-(void)requestMedication:(Doctor *)doctor forSymptoms:(NSString *)symptoms;

//patient is visiting the doctor it will save that instance of the doctor
-(void)visit:(Doctor *)doctor;

@end
