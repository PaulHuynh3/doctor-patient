//
//  Doctor.m
//  Doctor&Patient2
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "Doctor.h"
//after setting @prescription.h in doctor.h set it to import prescription.h
#import "Prescription.h"
#import "Patient.h"

@implementation Doctor

-(instancetype)initWithDoctor:(NSString *)doctorName andSpecilization:(NSString *)specialization{

    self = [super init];
    
    if (self){
        _doctorName = doctorName;
        _specialization = specialization;
    
    }
    return self;
}


- (Prescription *)requestMedication:(NSString *)symptoms {
    //have to init it because we are expecting a class return
    Prescription *prescription = [[Prescription alloc]init];
    //we are taking these properties from prescriptions
    //the doctor is returning his class
    prescription.doctor = self;
    //name of the patient
    prescription.name = @"Awesome Medication";
    //what symptoms
    prescription.symptoms = symptoms;
    
    //return p as we initialize the class that means we dont need to create another instance of Prescription.
    return prescription;
}

@end
