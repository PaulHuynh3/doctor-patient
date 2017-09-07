//
//  main.m
//  Doctor&Patient2
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor* phil = [[Doctor alloc]initWithDoctor:@"Phil" andSpecilization:@"Surgeon"];
        
        Patient* sam = [[Patient alloc]initWithPatient:@"Sam" andAge:26];
        
        Doctor* mike = [[Doctor alloc]initWithDoctor:@"Mike" andSpecilization:@"dietian"];
        
        Patient* angel = [[Patient alloc]initWithPatient:@"angel" andAge:28];
        
        
        
        //verify if sam has his healthcard
        [sam visit:phil];
        
        //sam request medicine the mediciation prescribed is stored
        [sam requestMedication:phil forSymptoms:@"flu"];
        
        
        //verify if angel has his healthcard
        [angel visit:mike];
        
        //request medicine
        [angel requestMedication:mike forSymptoms:@"heart attack"];
        
        [angel requestMedication:phil forSymptoms:@"waeafs"];
        
        
    }
    return 0;
}
