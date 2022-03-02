//
//  JediTemple.m
//  ObjC L42 Methods wBlocks
//
//  Created by Michele Galvagno on 02/03/22.
//

#import "JediTemple.h"

@interface JediTemple ()
@property (readonly) NSArray *jedi;
@end

@implementation JediTemple

- (id)init
{
    self = [super init];
    if (self) {
        _jedi = @[@"Mace", @"Luke", @"Yoda", @"Obi-Wan" ];
    }
    return self;
}

- (void)enumerateMembersWithBlock:(void (^)(NSString * _Nonnull, int, BOOL * _Nonnull))block {
    BOOL stop = NO;
    for (int i = 0; i < [_jedi count]; i++) {
        block(_jedi[i], i, &stop);
        if (stop == YES) {
            return;
        }
    }
    
}

@end
