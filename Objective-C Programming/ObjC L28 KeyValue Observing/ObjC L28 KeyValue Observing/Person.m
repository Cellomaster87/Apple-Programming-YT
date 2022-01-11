//
//  Person.m
//  ObjC L28 KeyValue Observing
//
//  Created by Michele Galvagno on 11/01/22.
//

#import "Person.h"

@implementation Person
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                       context:(void *)context {
    if ([keyPath isEqualToString:@"hunger"]) {
        NSLog(@"Object: %@", [object valueForKeyPath:keyPath]);
        NSLog(@"Change: %@", [change objectForKey:/*NSKeyValueChangeNewKey*/ NSKeyValueChangeOldKey]);
    }
}
@end
