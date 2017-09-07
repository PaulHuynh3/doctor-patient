//
//  Patient.m
//  Doctor&Patient2
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithPatient:(NSString *)name andAge:(int)age{

    self = [super init];
    
    if (self){
        _name = name;
        _age = age;
        _healthCard = YES;

    }
    return self;
}
//expects an instance of Doctor class and symptom
-(void)requestMedication:(Doctor *)doctor forSymptoms:(NSString *)symptoms {
    
    NSLog(@"%@",symptoms);
    //calls doctor class and use the array request medication
    Prescription *p = [doctor requestMedication:symptoms];
    

    //add list of prescription to object;
    [self.prescriptions addObject:p];

}


-(void)visit:(Doctor *)doctor{
    //self healthcard because we are calling on ourself to see if we have a health card.
    if (self.healthCard == YES){
        NSLog(@"Yes, I can see you now!!");
        //add patients to list of array
        [doctor.patients addObject:self];
        
    } else{
        NSLog(@"Please provide valid ID");
        
    }
    
    
}


@end
