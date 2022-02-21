//
//  main.m
//  ObjC L39 Authomatic Synthesis
//
//  Created by Michele Galvagno on 21/02/22.
//

#import <Foundation/Foundation.h>

/*!
 Object Subscripting
 Similar to how C arrays work. Object at index 0, array[0].
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[ @"Dog", @"Yoda"];
        NSLog(@"%@", array[0]); // [array objectAtIndex:0];
        NSDictionary *dict = @{ @"key1" : @"Something",
                                @"key2" : @"OtherThing" };
        NSLog(@"%@", dict[@"key1"]); // I pass the key that I want, equal to [dict objectForKey:@"key2"];
        
        NSMutableArray *m_array = [NSMutableArray arrayWithArray:@[ @"Dog", @"Yoda"]];
        m_array[0] = @"Luke"; // [m_array replaceObjectAtIndex:0 withObject:@"Luke"];
        NSLog(@"%@", m_array);
        
        NSMutableDictionary *m_dict = [NSMutableDictionary dictionaryWithDictionary:@{ @"key1" : @"Something"}];
        m_dict[@"key1"] = @"NewThing"; // [m_dict setObject:@"NewThing" forKey:@"key1"];
        m_dict[@"key2"] = @"SecondThing"; // this adds a new object
        NSLog(@"%@", m_dict);
    }
    return 0;
}
