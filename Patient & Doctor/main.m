//
//  main.m
//  Patient & Doctor
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        Doctor* doctor = [[Doctor alloc]init];
        Patient* paul = [[Patient alloc]init];
        
        //pass the delegate of name from patient to doctor
        doctor.delegate = paul;
        [doctor checkUp];
        NSLog(@"%@",doctor.name);
        
        //pass the delegate of age from patient to doctor
        doctor.delegate = paul;
        [doctor checkUp];
        NSLog(@"%i",doctor.age);
        
    
        //ask if the patient has his healthcard so we can see him or not
        doctor.delegate = paul;
        [doctor identity];
        
        
        
        
    }
    return 0;
}
