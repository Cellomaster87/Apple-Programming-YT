//
//  DesktopEntity.m
//  Lesson 53
//
//  Created by Lucas Derraugh on 8/2/13.
//  Copyright (c) 2013 Lucas Derraugh. All rights reserved.
//

#import "DesktopEntity.h"

@implementation DesktopEntity

- (id)initWithFileURL:(NSURL *)fileURL {
    self = [super init];
    if (self) {
        _fileURL = fileURL;
    }
    return self;
}

- (NSString *)name {
    NSString *name;
    if ([self.fileURL getResourceValue:&name forKey:NSURLLocalizedNameKey error:NULL]) {
        return name;
    }
    return nil;
}

- (NSImage *)image {
    if (!_image) {
        _image = [[NSImage alloc] initByReferencingURL:self.fileURL];
    }
    return _image;
}

@end
