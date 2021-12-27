//
//  Computer.h
//  ObjC L18 Object Ownership
//
//  Created by Michele Galvagno on 27/12/21.
//

#import <Foundation/Foundation.h>
#import "Chip.h"

NS_ASSUME_NONNULL_BEGIN

@interface Computer : NSObject {
    Chip *chip;
}

-(void)setChip:(Chip *)newChip;
-(Chip *)chip;

@end

NS_ASSUME_NONNULL_END
