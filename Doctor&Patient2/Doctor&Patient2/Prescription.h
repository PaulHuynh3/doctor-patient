//
//  Prescription.h
//  Doctor&Patient2
//
//  Created by Paul on 2017-09-07.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Prescription : NSObject

//class Doctor as a property
@property Doctor *doctor;
@property NSString *name;
@property NSString *symptoms;

@end
